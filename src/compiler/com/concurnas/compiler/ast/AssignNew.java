package com.concurnas.compiler.ast;

import com.concurnas.compiler.ast.interfaces.Expression;
import com.concurnas.compiler.visitors.ScopeAndTypeChecker;
import com.concurnas.compiler.visitors.TypeCheckUtils;
import com.concurnas.compiler.visitors.Unskippable;
import com.concurnas.compiler.visitors.Visitor;

public class AssignNew extends Assign implements REPLTopLevelComponent{
	
	public boolean isFinal;
	public boolean isVolatile;
	public String prefix;
	public String name;
	public Type type;
	public AssignStyleEnum eq;
	public Expression expr;

	public boolean isautogenerated = false;
	
	public boolean isReallyNew = false;
	public boolean preStoreDup = false;
	
	private boolean insistNew = false;
	public boolean isSharedClass = false;
	public boolean isClassField=false;
	public AccessModifier accessModifier;
	public boolean createRefInitializer = false;
	public boolean isAnnotationField = false;

	@Override
	public Node copyTypeSpecific() {
		AssignNew ret = new AssignNew(super.getLine(), super.getColumn());
		ret.isFinal=isFinal;
		ret.isVolatile=isVolatile;
		ret.prefix=prefix;
		ret.name=name;
		ret.type = type==null?null:(Type)type.copy();
		ret.eq=eq;
		ret.expr= null==expr?null:(Expression)expr.copy();

		ret.isautogenerated=isautogenerated;
		
		ret.isReallyNew=isReallyNew;
		ret.preStoreDup=preStoreDup;
		ret.origprefix=origprefix;
		
		ret.insistNew =insistNew;
		ret.isSharedClass =isSharedClass;
		ret.isClassField =isClassField;
		ret.accessModifier=accessModifier;
		ret.createRefInitializer=createRefInitializer;
		ret.isAnnotationField=isAnnotationField;
		ret.annotations = annotations==null?null:(Annotations)annotations.copy();
		ret.isTransient= isTransient;
		ret.isShared= isShared;
		ret.isLazy = isLazy;
		ret.localClassImportedField= localClassImportedField;
		ret.astRedirect = astRedirect==null?null:(Node)astRedirect.copy();
		ret.gpuVarQualifier = gpuVarQualifier;
		ret.isInjected = isInjected;
		ret.skipNullableCheck = skipNullableCheck;
		ret.origNamePreASTRedirect = origNamePreASTRedirect;
		
		return ret; 
	}
	
	private AssignNew(int line, int col){super(line, col, true);}
	
	public AssignNew(AccessModifier accessModifier, int line, int col, boolean isFinal, boolean isVolatile, String name,String prefix, AssignStyleEnum eq, Expression expr) {
		super(line, col, true);
		this.isFinal = isFinal;
		this.accessModifier = accessModifier;
		this.isVolatile = isVolatile;
		this.prefix = prefix;
		this.name = name;
		this.eq = eq;
		this.expr = expr;
	}

	public Annotations annotations;
	public String origprefix = null;
	public boolean localClassImportedField=false;
	public Node astRedirect;
	public boolean skipNullableCheck=false;

	@Override
	public void setAnnotations(Annotations annotations) {
		this.annotations=annotations;
	}

	@Override
	public Annotations getAnnotations() {
		return annotations;
	}
	
	@Override
	public Type getTaggedType()
	{
		if(this.isLazy) {
			NamedType asLazy = new NamedType(ScopeAndTypeChecker.getLazyCD());
			asLazy.setGenTypes(TypeCheckUtils.boxTypeIfPrimative(this.type, false));
			return asLazy;
		}
		
		return this.type;
	}
	
	public AssignNew(AccessModifier accessModifier, int line, int col, boolean isFinal, boolean isVolatile, String name,
			String prefix, Type type) {
		super(line, col, true);
		this.isFinal = isFinal;
		this.isVolatile = isVolatile;
		this.prefix = prefix;
		this.name = name;
		this.type = type;
		this.accessModifier = accessModifier;
	}

	public AssignNew(AccessModifier accessModifier, int line, int col, boolean isFinal, boolean isVolatile, String name,String prefix, Type type, AssignStyleEnum eq, Expression expr) {
		this(accessModifier, line, col, isFinal, isVolatile, name,prefix, eq, expr);
		this.type = type;
	}

	public AssignNew(AccessModifier accessModifier, int line, int col, boolean fin, boolean vol, String name, Type type, AssignStyleEnum eq, Expression expr) {
		this(accessModifier, line, col, fin, vol, name, null, type, eq, expr);
	}
	
	public AssignNew(AccessModifier accessModifier, int line, int col, boolean fin, boolean vol, String name, Expression expr) {
		this(accessModifier, line, col, fin, vol, name, null, null, AssignStyleEnum.EQUALS, expr);
	}

	public AssignNew(AccessModifier accessModifier, int line, int column, String name, Type type) {
		this(accessModifier, line, column, false, false, name, null, type, null, null);
	}

	public AssignNew(AccessModifier accessModifier, int line, int column, String name, Type type, AssignStyleEnum equals, Expression e) {
		this(accessModifier, line, column, false, false, name, null, type, equals, e);
	}

	@Override
	public Object accept(Visitor visitor) {
		visitor.setLastLineVisited(super.getLine());
		
		if(this.astRedirect != null && !(visitor instanceof ScopeAndTypeChecker)){
			return astRedirect.accept(visitor);
		}
		
		if(this.canSkipIterativeCompilation && !(visitor instanceof Unskippable)) {
			return null;
		}

		if(visitor instanceof ScopeAndTypeChecker) {
			this.hasErrors = false;
		}
		visitor.pushErrorContext(this);
		Object ret = visitor.visit(this);
		visitor.popErrorContext();
		return ret;
	}
	
	public boolean isNewWithoutTypeDefined()
	{
		return isFinal || isVolatile || prefix != null || type != null; //type not needed in this expr
	}
	
	public boolean isInsistNew() {
		return insistNew;
	}

	public void setInsistNew(boolean insistNew) {
		this.insistNew = insistNew;
	}

	@Override
	public Expression getRHSExpression() {
		return expr;
	}

	@Override
	public Expression setRHSExpression(Expression what) {
		Expression was = this.expr;
		this.expr = what;
		return was;
	}
	
	@Override
	public void setAssignStyleEnum(AssignStyleEnum to) {
		this.eq = to;
	}

	@Override
	public boolean getCanReturnAValue(){//most things can
		if(this.astRedirect != null) {
			return this.astRedirect.getCanReturnAValue();
		}
		return false;
	}

	
	private boolean canSkipIterativeCompilation=false;
	@Override
	public boolean canSkip() {
		return canSkipIterativeCompilation;
	}

	@Override
	public void setSkippable(boolean skippable) {
		canSkipIterativeCompilation = skippable;
	}

	@Override
	public String getName() {
		return this.name;
	}

	@Override
	public boolean isNewComponent() {
		return true;
	}
	
	@Override
	public Type getFuncType() {
		return this.getTaggedType();
	}
	
	public boolean hasErrors = false;
	@Override
	public void setErrors(boolean hasErrors) {
		this.hasErrors = hasErrors;
	}
	@Override
	public boolean getErrors() {
		return hasErrors;
	}
	
	private boolean supressErrors = false;
	public String origNamePreASTRedirect;
	@Override
	public void setSupressErrors(boolean supressErrors) {
		this.supressErrors = supressErrors;
	}
	@Override
	public boolean getSupressErrors() {
		return supressErrors;
	}
	
	public boolean isSharedVariableStrict() {
		//and not just shared class
		if(this.isShared) {
			return !this.isSharedClass;
		}
		return false;
	}
	
}