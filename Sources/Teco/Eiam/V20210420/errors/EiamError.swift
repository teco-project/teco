public struct TCEiamError: TCErrorType {
    enum Code: String {
        case failedOperation_AccountAlreadyExistedInAccountGroup = "FailedOperation.AccountAlreadyExistedInAccountGroup"
        case failedOperation_AccountGroupNameAlreadyExists = "FailedOperation.AccountGroupNameAlreadyExists"
        case failedOperation_AccountGroupNotExist = "FailedOperation.AccountGroupNotExist"
        case failedOperation_AccountNameAlreadyExists = "FailedOperation.AccountNameAlreadyExists"
        case failedOperation_AccountNotExist = "FailedOperation.AccountNotExist"
        case failedOperation_AccountNotExisted = "FailedOperation.AccountNotExisted"
        case failedOperation_AppDisplayNameAlreadyExists = "FailedOperation.AppDisplayNameAlreadyExists"
        case failedOperation_AppNotExist = "FailedOperation.AppNotExist"
        case failedOperation_ChildOrgNodeNameAlreadyExists = "FailedOperation.ChildOrgNodeNameAlreadyExists"
        case failedOperation_ChildOrgNodeWithUsersCanNotBeDeleted = "FailedOperation.ChildOrgNodeWithUsersCanNotBeDeleted"
        case failedOperation_CreateOrgNodeError = "FailedOperation.CreateOrgNodeError"
        case failedOperation_CreateUserFailure = "FailedOperation.CreateUserFailure"
        case failedOperation_CreateUserGroupError = "FailedOperation.CreateUserGroupError"
        case failedOperation_CustomizeParentOrgNodeIdAlreadyExists = "FailedOperation.CustomizeParentOrgNodeIdAlreadyExists"
        case failedOperation_CustomizedOrgNodeIdCanNotBeEmpty = "FailedOperation.CustomizedOrgNodeIdCanNotBeEmpty"
        case failedOperation_DefaultOrgNodeCanNotBeDeleted = "FailedOperation.DefaultOrgNodeCanNotBeDeleted"
        case failedOperation_DeleteOrgNodeError = "FailedOperation.DeleteOrgNodeError"
        case failedOperation_DeleteUserError = "FailedOperation.DeleteUserError"
        case failedOperation_DeleteUserExistsAdministrator = "FailedOperation.DeleteUserExistsAdministrator"
        case failedOperation_DeleteUserGroupError = "FailedOperation.DeleteUserGroupError"
        case failedOperation_DescribeOrgNodeError = "FailedOperation.DescribeOrgNodeError"
        case failedOperation_DescribeOrgNodeRootError = "FailedOperation.DescribeOrgNodeRootError"
        case failedOperation_ExpectFieldsNotFound = "FailedOperation.ExpectFieldsNotFound"
        case failedOperation_GroupIdNotFound = "FailedOperation.GroupIdNotFound"
        case failedOperation_IdToCodeError = "FailedOperation.IdToCodeError"
        case failedOperation_LimitQuotaNotEnough = "FailedOperation.LimitQuotaNotEnough"
        case failedOperation_ListUserGroupsOfUserError = "FailedOperation.ListUserGroupsOfUserError"
        case failedOperation_ListUsersInOrgNodeError = "FailedOperation.ListUsersInOrgNodeError"
        case failedOperation_ListUsersInUserGroupError = "FailedOperation.ListUsersInUserGroupError"
        case failedOperation_MainOrgNodeNotExist = "FailedOperation.MainOrgNodeNotExist"
        case failedOperation_OperationError = "FailedOperation.OperationError"
        case failedOperation_OperationFailure = "FailedOperation.OperationFailure"
        case failedOperation_OrgNodeIdNotExist = "FailedOperation.OrgNodeIdNotExist"
        case failedOperation_OrgNodeNotExist = "FailedOperation.OrgNodeNotExist"
        case failedOperation_OrgNodeRootCanNotBeDeleted = "FailedOperation.OrgNodeRootCanNotBeDeleted"
        case failedOperation_OrgNodeSettingError = "FailedOperation.OrgNodeSettingError"
        case failedOperation_OrgNodeWithUsersCanNotBeDeleted = "FailedOperation.OrgNodeWithUsersCanNotBeDeleted"
        case failedOperation_ParentOrgNodeIdNotFound = "FailedOperation.ParentOrgNodeIdNotFound"
        case failedOperation_PersonNotFound = "FailedOperation.PersonNotFound"
        case failedOperation_RemoveUsersFromUserGroupError = "FailedOperation.RemoveUsersFromUserGroupError"
        case failedOperation_SecondaryOrgNodeDuplicates = "FailedOperation.SecondaryOrgNodeDuplicates"
        case failedOperation_UpdateLDAPUserOrgExceedsRange = "FailedOperation.UpdateLDAPUserOrgExceedsRange"
        case failedOperation_UpdateLDAPUserOrgNotInSameCrop = "FailedOperation.UpdateLDAPUserOrgNotInSameCrop"
        case failedOperation_UpdateUserExceedsRange = "FailedOperation.UpdateUserExceedsRange"
        case failedOperation_UpdateWeComUserOrgExceedsRange = "FailedOperation.UpdateWeComUserOrgExceedsRange"
        case failedOperation_UpdateWeComUserOrgNotInSameCrop = "FailedOperation.UpdateWeComUserOrgNotInSameCrop"
        case failedOperation_UserAuthListError = "FailedOperation.UserAuthListError"
        case failedOperation_UserEmailAlreadyExists = "FailedOperation.UserEmailAlreadyExists"
        case failedOperation_UserGroupNotExist = "FailedOperation.UserGroupNotExist"
        case failedOperation_UserNameAlreadyExists = "FailedOperation.UserNameAlreadyExists"
        case failedOperation_UserNotExistInUserGroup = "FailedOperation.UserNotExistInUserGroup"
        case failedOperation_UserNotFound = "FailedOperation.UserNotFound"
        case failedOperation_UserPhoneAlreadyExists = "FailedOperation.UserPhoneAlreadyExists"
        case invalidParameterValue_AccountIdsCanNotBeEmpty = "InvalidParameterValue.AccountIdsCanNotBeEmpty"
        case invalidParameterValue_AppIdCanNotBeEmpty = "InvalidParameterValue.AppIdCanNotBeEmpty"
        case invalidParameterValue_ApplicationInfoSortKeyIllegal = "InvalidParameterValue.ApplicationInfoSortKeyIllegal"
        case invalidParameterValue_EntityTypeNotMatch = "InvalidParameterValue.EntityTypeNotMatch"
        case invalidParameterValue_LengthExceeded = "InvalidParameterValue.LengthExceeded"
        case invalidParameterValue_NewPasswordCanNotBeEmpty = "InvalidParameterValue.NewPasswordCanNotBeEmpty"
        case invalidParameterValue_ParameterIllegal = "InvalidParameterValue.ParameterIllegal"
        case invalidParameterValue_SortKeyIllegal = "InvalidParameterValue.SortKeyIllegal"
        case invalidParameterValue_UserIdCanNotBeEmpty = "InvalidParameterValue.UserIdCanNotBeEmpty"
        case invalidParameterValue_UserNameCanNotBeEmpty = "InvalidParameterValue.UserNameCanNotBeEmpty"
        case invalidParameterValue_UserPhoneCanNotBeEmpty = "InvalidParameterValue.UserPhoneCanNotBeEmpty"
        case invalidParameter_AttributeValueValidError = "InvalidParameter.AttributeValueValidError"
        case invalidParameter_OrgCodeIllegal = "InvalidParameter.OrgCodeIllegal"
        case invalidParameter_ParameterIllegal = "InvalidParameter.ParameterIllegal"
        case invalidParameter_Parameterlllegal = "InvalidParameter.Parameterlllegal"
        case invalidParameter_SearchCriteriaIllegal = "InvalidParameter.SearchCriteriaIllegal"
        case invalidParameter_TimeFormatIllegal = "InvalidParameter.TimeFormatIllegal"
        case invalidParameter_UserExpirationTimeIllegal = "InvalidParameter.UserExpirationTimeIllegal"
        case invalidParameter_UserIDIsNull = "InvalidParameter.UserIDIsNull"
        case invalidParameter_UserNameIsNull = "InvalidParameter.UserNameIsNull"
        case limitExceeded_ItemsNumberLimitExceeded = "LimitExceeded.ItemsNumberLimitExceeded"
        case limitExceeded_ParameterLengthLimitExceeded = "LimitExceeded.ParameterLengthLimitExceeded"
        case limitExceeded_SecondaryNodeCountLimitExceeded = "LimitExceeded.SecondaryNodeCountLimitExceeded"
        case operationDenied_ActionPermissionDeny = "OperationDenied.ActionPermissionDeny"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// 账号已存在于该账号组。
    public static var failedOperation_AccountAlreadyExistedInAccountGroup: TCEiamError {
        TCEiamError(.failedOperation_AccountAlreadyExistedInAccountGroup)
    }
    
    /// 账号组名称已存在。
    public static var failedOperation_AccountGroupNameAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_AccountGroupNameAlreadyExists)
    }
    
    /// 账号组不存在。
    public static var failedOperation_AccountGroupNotExist: TCEiamError {
        TCEiamError(.failedOperation_AccountGroupNotExist)
    }
    
    /// 账号名称已存在。
    public static var failedOperation_AccountNameAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_AccountNameAlreadyExists)
    }
    
    /// 账号不存在。
    public static var failedOperation_AccountNotExist: TCEiamError {
        TCEiamError(.failedOperation_AccountNotExist)
    }
    
    /// 账号不存在。
    public static var failedOperation_AccountNotExisted: TCEiamError {
        TCEiamError(.failedOperation_AccountNotExisted)
    }
    
    /// 应用名称已存在。
    public static var failedOperation_AppDisplayNameAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_AppDisplayNameAlreadyExists)
    }
    
    /// 应用不存在。
    public static var failedOperation_AppNotExist: TCEiamError {
        TCEiamError(.failedOperation_AppNotExist)
    }
    
    /// 同一组织下相同名称的子组织机构已存在。
    public static var failedOperation_ChildOrgNodeNameAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_ChildOrgNodeNameAlreadyExists)
    }
    
    /// 其子机构中存在用户的机构节点不能被删除。
    public static var failedOperation_ChildOrgNodeWithUsersCanNotBeDeleted: TCEiamError {
        TCEiamError(.failedOperation_ChildOrgNodeWithUsersCanNotBeDeleted)
    }
    
    /// 创建机构节点失败。
    public static var failedOperation_CreateOrgNodeError: TCEiamError {
        TCEiamError(.failedOperation_CreateOrgNodeError)
    }
    
    /// 创建用户异常。
    public static var failedOperation_CreateUserFailure: TCEiamError {
        TCEiamError(.failedOperation_CreateUserFailure)
    }
    
    /// 创建用户组失败。
    public static var failedOperation_CreateUserGroupError: TCEiamError {
        TCEiamError(.failedOperation_CreateUserGroupError)
    }
    
    /// 自定义机构节点对外ID已存在。
    public static var failedOperation_CustomizeParentOrgNodeIdAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_CustomizeParentOrgNodeIdAlreadyExists)
    }
    
    /// 自定义机构节点对外ID不可填为空字符。
    public static var failedOperation_CustomizedOrgNodeIdCanNotBeEmpty: TCEiamError {
        TCEiamError(.failedOperation_CustomizedOrgNodeIdCanNotBeEmpty)
    }
    
    /// 默认导入机构不能被删除。
    public static var failedOperation_DefaultOrgNodeCanNotBeDeleted: TCEiamError {
        TCEiamError(.failedOperation_DefaultOrgNodeCanNotBeDeleted)
    }
    
    /// 删除机构节点失败。
    public static var failedOperation_DeleteOrgNodeError: TCEiamError {
        TCEiamError(.failedOperation_DeleteOrgNodeError)
    }
    
    /// 删除用户失败。
    public static var failedOperation_DeleteUserError: TCEiamError {
        TCEiamError(.failedOperation_DeleteUserError)
    }
    
    /// 用户为管理员，不能删除。
    public static var failedOperation_DeleteUserExistsAdministrator: TCEiamError {
        TCEiamError(.failedOperation_DeleteUserExistsAdministrator)
    }
    
    /// 删除用户组失败。
    public static var failedOperation_DeleteUserGroupError: TCEiamError {
        TCEiamError(.failedOperation_DeleteUserGroupError)
    }
    
    /// 读取机构节点信息失败。
    public static var failedOperation_DescribeOrgNodeError: TCEiamError {
        TCEiamError(.failedOperation_DescribeOrgNodeError)
    }
    
    /// 读取根机构节点信息失败。
    public static var failedOperation_DescribeOrgNodeRootError: TCEiamError {
        TCEiamError(.failedOperation_DescribeOrgNodeRootError)
    }
    
    /// 期望返回的用户属性类型不存在。
    public static var failedOperation_ExpectFieldsNotFound: TCEiamError {
        TCEiamError(.failedOperation_ExpectFieldsNotFound)
    }
    
    /// 用户组ID未找到。
    public static var failedOperation_GroupIdNotFound: TCEiamError {
        TCEiamError(.failedOperation_GroupIdNotFound)
    }
    
    /// ID转换编码失败。
    public static var failedOperation_IdToCodeError: TCEiamError {
        TCEiamError(.failedOperation_IdToCodeError)
    }
    
    /// 同一个应用，相同的用户不能添加超过 %s 个映射关系。
    public static var failedOperation_LimitQuotaNotEnough: TCEiamError {
        TCEiamError(.failedOperation_LimitQuotaNotEnough)
    }
    
    /// 获取用户所在的用户组列表失败。
    public static var failedOperation_ListUserGroupsOfUserError: TCEiamError {
        TCEiamError(.failedOperation_ListUserGroupsOfUserError)
    }
    
    /// 读取节点下用户失败。
    public static var failedOperation_ListUsersInOrgNodeError: TCEiamError {
        TCEiamError(.failedOperation_ListUsersInOrgNodeError)
    }
    
    /// 获取用户组中的用户列表失败。
    public static var failedOperation_ListUsersInUserGroupError: TCEiamError {
        TCEiamError(.failedOperation_ListUsersInUserGroupError)
    }
    
    /// 主组织机构不存在。
    public static var failedOperation_MainOrgNodeNotExist: TCEiamError {
        TCEiamError(.failedOperation_MainOrgNodeNotExist)
    }
    
    /// 操作失败。
    public static var failedOperation_OperationError: TCEiamError {
        TCEiamError(.failedOperation_OperationError)
    }
    
    /// 操作失败。
    public static var failedOperation_OperationFailure: TCEiamError {
        TCEiamError(.failedOperation_OperationFailure)
    }
    
    /// 机构节点ID不存在。
    public static var failedOperation_OrgNodeIdNotExist: TCEiamError {
        TCEiamError(.failedOperation_OrgNodeIdNotExist)
    }
    
    /// 机构节点不存在。
    public static var failedOperation_OrgNodeNotExist: TCEiamError {
        TCEiamError(.failedOperation_OrgNodeNotExist)
    }
    
    /// 机构根节点不能被删除。
    public static var failedOperation_OrgNodeRootCanNotBeDeleted: TCEiamError {
        TCEiamError(.failedOperation_OrgNodeRootCanNotBeDeleted)
    }
    
    /// 组织机构设置失败，组织机构不可同时被选择为用户所属的主组织和次要机构。
    public static var failedOperation_OrgNodeSettingError: TCEiamError {
        TCEiamError(.failedOperation_OrgNodeSettingError)
    }
    
    /// 有用户存在的机构节点不能被删除。
    public static var failedOperation_OrgNodeWithUsersCanNotBeDeleted: TCEiamError {
        TCEiamError(.failedOperation_OrgNodeWithUsersCanNotBeDeleted)
    }
    
    /// 父机构节点ID未找到。
    public static var failedOperation_ParentOrgNodeIdNotFound: TCEiamError {
        TCEiamError(.failedOperation_ParentOrgNodeIdNotFound)
    }
    
    /// 身份主体未找到。
    public static var failedOperation_PersonNotFound: TCEiamError {
        TCEiamError(.failedOperation_PersonNotFound)
    }
    
    /// 从用户组中移除用户失败。
    public static var failedOperation_RemoveUsersFromUserGroupError: TCEiamError {
        TCEiamError(.failedOperation_RemoveUsersFromUserGroupError)
    }
    
    /// 次要机构元素重复。
    public static var failedOperation_SecondaryOrgNodeDuplicates: TCEiamError {
        TCEiamError(.failedOperation_SecondaryOrgNodeDuplicates)
    }
    
    /// 不能变更LDAP导入的用户到目录外的组织机构下。
    public static var failedOperation_UpdateLDAPUserOrgExceedsRange: TCEiamError {
        TCEiamError(.failedOperation_UpdateLDAPUserOrgExceedsRange)
    }
    
    /// 不能变更LDAP导入的用户到其他目录的企业机构下。
    public static var failedOperation_UpdateLDAPUserOrgNotInSameCrop: TCEiamError {
        TCEiamError(.failedOperation_UpdateLDAPUserOrgNotInSameCrop)
    }
    
    /// 不能变更自建用户到有同步操作类型的组织机构下。
    public static var failedOperation_UpdateUserExceedsRange: TCEiamError {
        TCEiamError(.failedOperation_UpdateUserExceedsRange)
    }
    
    /// 不能变更企业微信用户到企业外的组织机构。
    public static var failedOperation_UpdateWeComUserOrgExceedsRange: TCEiamError {
        TCEiamError(.failedOperation_UpdateWeComUserOrgExceedsRange)
    }
    
    /// 不能变更企业微信用户到非相同的企业机构下。
    public static var failedOperation_UpdateWeComUserOrgNotInSameCrop: TCEiamError {
        TCEiamError(.failedOperation_UpdateWeComUserOrgNotInSameCrop)
    }
    
    /// 获取用户被授权访问的应用列表失败。
    public static var failedOperation_UserAuthListError: TCEiamError {
        TCEiamError(.failedOperation_UserAuthListError)
    }
    
    /// 用户邮箱已存在。
    public static var failedOperation_UserEmailAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_UserEmailAlreadyExists)
    }
    
    /// 用户组不存在。
    public static var failedOperation_UserGroupNotExist: TCEiamError {
        TCEiamError(.failedOperation_UserGroupNotExist)
    }
    
    /// 用户名字已存在。
    public static var failedOperation_UserNameAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_UserNameAlreadyExists)
    }
    
    /// 用户不存在于该用户组。
    public static var failedOperation_UserNotExistInUserGroup: TCEiamError {
        TCEiamError(.failedOperation_UserNotExistInUserGroup)
    }
    
    /// 用户不存在。
    public static var failedOperation_UserNotFound: TCEiamError {
        TCEiamError(.failedOperation_UserNotFound)
    }
    
    /// 用户手机已存在。
    public static var failedOperation_UserPhoneAlreadyExists: TCEiamError {
        TCEiamError(.failedOperation_UserPhoneAlreadyExists)
    }
    
    /// 账号ID列表不能为空。
    public static var invalidParameterValue_AccountIdsCanNotBeEmpty: TCEiamError {
        TCEiamError(.invalidParameterValue_AccountIdsCanNotBeEmpty)
    }
    
    /// 应用ID不能为空。
    public static var invalidParameterValue_AppIdCanNotBeEmpty: TCEiamError {
        TCEiamError(.invalidParameterValue_AppIdCanNotBeEmpty)
    }
    
    /// 应用信息分页展示的排列属性不合法。
    public static var invalidParameterValue_ApplicationInfoSortKeyIllegal: TCEiamError {
        TCEiamError(.invalidParameterValue_ApplicationInfoSortKeyIllegal)
    }
    
    /// EntityType不匹配。
    public static var invalidParameterValue_EntityTypeNotMatch: TCEiamError {
        TCEiamError(.invalidParameterValue_EntityTypeNotMatch)
    }
    
    /// 参数的长度超出限制。
    public static var invalidParameterValue_LengthExceeded: TCEiamError {
        TCEiamError(.invalidParameterValue_LengthExceeded)
    }
    
    /// 新密码不能为空。
    public static var invalidParameterValue_NewPasswordCanNotBeEmpty: TCEiamError {
        TCEiamError(.invalidParameterValue_NewPasswordCanNotBeEmpty)
    }
    
    /// 参数不合法。
    public static var invalidParameterValue_ParameterIllegal: TCEiamError {
        TCEiamError(.invalidParameterValue_ParameterIllegal)
    }
    
    /// 分页展示的排序属性不合法。
    public static var invalidParameterValue_SortKeyIllegal: TCEiamError {
        TCEiamError(.invalidParameterValue_SortKeyIllegal)
    }
    
    /// 用户ID不能为空。
    public static var invalidParameterValue_UserIdCanNotBeEmpty: TCEiamError {
        TCEiamError(.invalidParameterValue_UserIdCanNotBeEmpty)
    }
    
    /// 用户名不能为空。
    public static var invalidParameterValue_UserNameCanNotBeEmpty: TCEiamError {
        TCEiamError(.invalidParameterValue_UserNameCanNotBeEmpty)
    }
    
    /// 用户手机不能为空。
    public static var invalidParameterValue_UserPhoneCanNotBeEmpty: TCEiamError {
        TCEiamError(.invalidParameterValue_UserPhoneCanNotBeEmpty)
    }
    
    /// 属性校验失败。
    public static var invalidParameter_AttributeValueValidError: TCEiamError {
        TCEiamError(.invalidParameter_AttributeValueValidError)
    }
    
    /// 组织机构代码不合法。
    public static var invalidParameter_OrgCodeIllegal: TCEiamError {
        TCEiamError(.invalidParameter_OrgCodeIllegal)
    }
    
    /// 参数不合法。
    public static var invalidParameter_ParameterIllegal: TCEiamError {
        TCEiamError(.invalidParameter_ParameterIllegal)
    }
    
    /// 参数不合法。
    public static var invalidParameter_Parameterlllegal: TCEiamError {
        TCEiamError(.invalidParameter_Parameterlllegal)
    }
    
    /// 列表搜索条件不合法。
    public static var invalidParameter_SearchCriteriaIllegal: TCEiamError {
        TCEiamError(.invalidParameter_SearchCriteriaIllegal)
    }
    
    /// 时间格式不合法。
    public static var invalidParameter_TimeFormatIllegal: TCEiamError {
        TCEiamError(.invalidParameter_TimeFormatIllegal)
    }
    
    /// 设定的用户过期时间不合法。
    public static var invalidParameter_UserExpirationTimeIllegal: TCEiamError {
        TCEiamError(.invalidParameter_UserExpirationTimeIllegal)
    }
    
    /// 用户ID参数为空。
    public static var invalidParameter_UserIDIsNull: TCEiamError {
        TCEiamError(.invalidParameter_UserIDIsNull)
    }
    
    /// 用户名参数为空。
    public static var invalidParameter_UserNameIsNull: TCEiamError {
        TCEiamError(.invalidParameter_UserNameIsNull)
    }
    
    /// 数据条目数超出最大限制。
    public static var limitExceeded_ItemsNumberLimitExceeded: TCEiamError {
        TCEiamError(.limitExceeded_ItemsNumberLimitExceeded)
    }
    
    /// 输入参数超出长度限制。
    public static var limitExceeded_ParameterLengthLimitExceeded: TCEiamError {
        TCEiamError(.limitExceeded_ParameterLengthLimitExceeded)
    }
    
    /// 用户的次要机构超出数量上限。
    public static var limitExceeded_SecondaryNodeCountLimitExceeded: TCEiamError {
        TCEiamError(.limitExceeded_SecondaryNodeCountLimitExceeded)
    }
    
    /// 当前用户缺乏访问该操作的权限。
    public static var operationDenied_ActionPermissionDeny: TCEiamError {
        TCEiamError(.operationDenied_ActionPermissionDeny)
    }
}

extension TCEiamError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self]
    }
}

extension TCEiamError: Equatable {
    public static func == (lhs: TCEiamError, rhs: TCEiamError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEiamError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}