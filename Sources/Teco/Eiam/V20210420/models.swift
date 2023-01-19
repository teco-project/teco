//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Eiam {
    /// 查询账号组信息列表。
    public struct AccountGroupInfo: TCOutputModel {
        /// 账号组ID。
        public let accountGroupId: String?

        /// 账号组名。
        public let groupName: String

        /// 备注。
        public let description: String

        /// 创建时间。
        public let createdDate: String

        enum CodingKeys: String, CodingKey {
            case accountGroupId = "AccountGroupId"
            case groupName = "GroupName"
            case description = "Description"
            case createdDate = "CreatedDate"
        }
    }

    /// 账号组查询参数
    public struct AccountGroupSearchCriteria: TCInputModel {
        /// 关键字
        public let keyword: String?

        public init(keyword: String? = nil) {
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
        }
    }

    /// 查询账号信息列表。
    public struct AppAccountInfo: TCOutputModel {
        /// 账号ID。
        public let accountId: String

        /// 账号名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountName: String?

        /// 用户信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userList: [LinkUserInfo]?

        /// 描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case accountName = "AccountName"
            case userList = "UserList"
            case description = "Description"
            case createdDate = "CreatedDate"
        }
    }

    /// 账号查询参数
    public struct AppAccountSearchCriteria: TCInputModel {
        /// 关键字
        public let keyword: String?

        public init(keyword: String? = nil) {
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
        }
    }

    /// 应用信息列表。
    public struct ApplicationAuthorizationInfo: TCOutputModel {
        /// 用户在被授权应用下对应的账号列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationAccounts: [String]?

        /// 应用ID，是应用的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?

        /// 展示用户所在的用户组、机构节点拥有该应用的访问权限的ID信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inheritedForm: InheritedForm?

        /// 应用名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationName: String?

        /// 应用创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        enum CodingKeys: String, CodingKey {
            case applicationAccounts = "ApplicationAccounts"
            case applicationId = "ApplicationId"
            case inheritedForm = "InheritedForm"
            case applicationName = "ApplicationName"
            case createdDate = "CreatedDate"
        }
    }

    /// 应用属性搜索条件。
    public struct ApplicationInfoSearchCriteria: TCInputModel {
        /// 应用匹配搜索关键字，匹配范围包括：应用名称、应用ID。
        public let keyword: String?

        /// 应用类型。ApplicationType的取值范围有：OAUTH2、JWT、CAS、SAML2、FORM、OIDC、APIGW。
        public let applicationType: String?

        public init(keyword: String? = nil, applicationType: String? = nil) {
            self.keyword = keyword
            self.applicationType = applicationType
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
            case applicationType = "ApplicationType"
        }
    }

    /// 应用信息列表。
    public struct ApplicationInformation: TCOutputModel {
        /// 应用ID，是应用的全局唯一标识。
        public let applicationId: String

        /// 应用展示名称，长度限制：64个字符。 默认与应用名字相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 应用创建时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        /// 上次更新时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedDate: String?

        /// 应用状态。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appStatus: Bool?

        /// 应用图标。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let icon: String?

        /// 应用类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationType: String?

        /// 客户端id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientId: String?

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case displayName = "DisplayName"
            case createdDate = "CreatedDate"
            case lastModifiedDate = "LastModifiedDate"
            case appStatus = "AppStatus"
            case icon = "Icon"
            case applicationType = "ApplicationType"
            case clientId = "ClientId"
        }
    }

    /// 返回的授权关系信息。
    public struct AuthorizationInfo: TCOutputModel {
        /// 应用唯一ID。
        public let appId: String

        /// 应用名称。
        public let appName: String

        /// 类型名称。
        public let entityName: String

        /// 类型唯一ID。
        public let entityId: String

        /// 上次更新时间，符合 ISO8601 标准。
        public let lastModifiedDate: String

        /// 授权类型唯一ID。
        public let authorizationId: String

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case appName = "AppName"
            case entityName = "EntityName"
            case entityId = "EntityId"
            case lastModifiedDate = "LastModifiedDate"
            case authorizationId = "AuthorizationId"
        }
    }

    /// 用户属性搜索条件。
    public struct AuthorizationInfoSearchCriteria: TCInputModel {
        /// 名称匹配搜索，当查询类型为用户时，匹配范围包括：用户名称、应用名称；当查询类型为用户组时，匹配范围包括：用户组名称、应用名称；当查询类型为组织机构时，匹配范围包括：组织机构名称、应用名称。
        public let keyword: String?

        public init(keyword: String? = nil) {
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
        }
    }

    /// 授权资源详情
    public struct AuthorizationResourceEntityInfo: TCOutputModel {
        /// 授权关系的唯一ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceId: String?

        /// 资源授权类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceType: String?

        /// 授权的资源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resource: String?

        /// 资源名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceName: String?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceType = "ResourceType"
            case resource = "Resource"
            case resourceName = "ResourceName"
        }
    }

    /// 返回符合条件的用户数据列表
    public struct AuthorizationUserResouceInfo: TCOutputModel {
        /// 资源ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceId: String?

        /// 资源类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceType: String?

        /// 授权资源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resource: String?

        /// 继承关系
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inheritedForm: InheritedForm?

        /// 应用账户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationAccounts: [String]?

        /// 资源名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceName: String?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceType = "ResourceType"
            case resource = "Resource"
            case inheritedForm = "InheritedForm"
            case applicationAccounts = "ApplicationAccounts"
            case resourceName = "ResourceName"
        }
    }

    /// 应用信息列表。
    public struct InheritedForm: TCOutputModel {
        /// 用户所在的用户组ID列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupIds: [String]?

        /// 用户所在的机构节点ID列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeIds: [String]?

        enum CodingKeys: String, CodingKey {
            case userGroupIds = "UserGroupIds"
            case orgNodeIds = "OrgNodeIds"
        }
    }

    /// 账号关联的用户信息
    public struct LinkUserInfo: TCOutputModel {
        /// 用户ID，是用户全局唯一标识，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 用户名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userName = "UserName"
        }
    }

    /// 展示机构下用户的属性搜索条件。
    public struct ListUsersInOrgNodeSearchCriteria: TCInputModel {
        /// 用户名，长度限制：64个字符。
        public let userName: String?

        /// 用户手机号。
        public let phone: String?

        /// 用户邮箱。
        public let email: String?

        /// 用户状态，取值 NORMAL （正常）、FREEZE （已冻结）、LOCKED （已锁定）或 NOT_ENABLED （未启用）。
        public let status: String?

        /// 用户创建时间，遵循 ISO 8601 标准。
        public let creationTime: String?

        /// 用户上次更新时间。
        public let lastUpdateTime: String?

        /// 名称匹配搜索，匹配范围包括：用户名称、用户手机号。
        public let keyword: String?

        public init(userName: String? = nil, phone: String? = nil, email: String? = nil, status: String? = nil, creationTime: String? = nil, lastUpdateTime: String? = nil, keyword: String? = nil) {
            self.userName = userName
            self.phone = phone
            self.email = email
            self.status = status
            self.creationTime = creationTime
            self.lastUpdateTime = lastUpdateTime
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case phone = "Phone"
            case email = "Email"
            case status = "Status"
            case creationTime = "CreationTime"
            case lastUpdateTime = "LastUpdateTime"
            case keyword = "Keyword"
        }
    }

    /// 当前机构节点下的子节点列表
    public struct OrgNodeChildInfo: TCOutputModel {
        /// 机构节点展示名称，长度限制：64个字符。 默认与机构名相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 机构节点最后修改时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedDate: String?

        /// 用户自定义可选填的机构节点对外ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customizedOrgNodeId: String?

        /// 当前机构节点的父节点ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentOrgNodeId: String?

        /// 机构节点ID，是机构节点的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?

        /// 数据来源。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSource: String?

        /// 机构节点创建时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        /// 机构节点描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case lastModifiedDate = "LastModifiedDate"
            case customizedOrgNodeId = "CustomizedOrgNodeId"
            case parentOrgNodeId = "ParentOrgNodeId"
            case orgNodeId = "OrgNodeId"
            case dataSource = "DataSource"
            case createdDate = "CreatedDate"
            case description = "Description"
        }
    }

    /// 机构子节点下的用户信息列表
    public struct OrgNodeChildUserInfo: TCOutputModel {
        /// 机构ID，是机构节点全局唯一标识，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?

        /// 用户信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userInfo: [UserInfo]?

        /// 当前机构节点下的用户总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalUserNum: Int64?

        /// 组织机构ID路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeIdPath: String?

        /// 组织机构名称路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeNamePath: String?

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
            case userInfo = "UserInfo"
            case totalUserNum = "TotalUserNum"
            case orgNodeIdPath = "OrgNodeIdPath"
            case orgNodeNamePath = "OrgNodeNamePath"
        }
    }

    /// 排序条件。
    public struct SortCondition: TCInputModel {
        /// 排序属性。
        public let sortKey: String

        /// 排序顺序，ASC为正向排序，DESC为反向排序。
        public let sortOrder: String

        public init(sortKey: String, sortOrder: String) {
            self.sortKey = sortKey
            self.sortOrder = sortOrder
        }

        enum CodingKeys: String, CodingKey {
            case sortKey = "SortKey"
            case sortOrder = "SortOrder"
        }
    }

    /// 三方账号信息。
    public struct ThirdPartyAccountInfo: TCOutputModel {
        /// 第三方账号代码。"2"代表企业微信。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountCode: String?

        /// 账号对应的用户名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountName: String?

        enum CodingKeys: String, CodingKey {
            case accountCode = "AccountCode"
            case accountName = "AccountName"
        }
    }

    /// 返回的用户组列表。
    public struct UserGroupInfo: TCOutputModel {
        /// 昵称，长度限制：64个字符。 默认与用户名相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 用户组ID，是用户组全局唯一标识，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupId: String?

        /// 用户组备注。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case userGroupId = "UserGroupId"
            case description = "Description"
            case createdDate = "CreatedDate"
        }
    }

    /// 用户组属性搜索条件。
    public struct UserGroupInfoSearchCriteria: TCInputModel {
        /// 名称匹配搜索，匹配范围包括：用户组名称、用户组ID。
        public let keyword: String?

        public init(keyword: String? = nil) {
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
        }
    }

    /// 返回的用户组列表。
    public struct UserGroupInformation: TCOutputModel {
        /// 用户组ID。
        public let userGroupId: String

        /// 用户组名称。
        public let userGroupName: String

        /// 上次更新时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedDate: String?

        enum CodingKeys: String, CodingKey {
            case userGroupId = "UserGroupId"
            case userGroupName = "UserGroupName"
            case lastModifiedDate = "LastModifiedDate"
        }
    }

    /// 获取用户所在的用户组列表功能中用户组属性搜索条件。
    public struct UserGroupInformationSearchCriteria: TCInputModel {
        /// 名称匹配搜索，匹配范围包括：用户组名称。
        public let keyword: String?

        public init(keyword: String? = nil) {
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
        }
    }

    /// 用户信息列表。
    public struct UserInfo: TCOutputModel {
        /// 用户ID，是用户全局唯一标识，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 昵称，长度限制：64个字符。 默认与用户名相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 用户名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        /// 用户手机号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phone: String?

        /// 邮箱地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let email: String?

        /// 用户状态。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 数据来源。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSource: String?

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case displayName = "DisplayName"
            case userName = "UserName"
            case phone = "Phone"
            case email = "Email"
            case status = "Status"
            case dataSource = "DataSource"
        }
    }

    /// 用户信息列表。
    public struct UserInformation: TCOutputModel {
        /// 用户名，长度限制：32个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        /// 用户状态。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 昵称，长度限制：64个字符。 默认与用户名相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 用户备注，长度限制：512个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 用户上次更新时间，遵循 ISO 8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastUpdateTime: String?

        /// 用户创建时间，遵循 ISO 8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creationTime: String?

        /// 用户所属主组织机构的路径ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPath: String?

        /// 带国家号的用户手机号，例如+86-00000000000。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phone: String?

        /// 用户所属用户组ID列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subjectGroups: [String]?

        /// 用户邮箱。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let email: String?

        /// 用户上次登录时间，遵循 ISO 8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastLoginTime: String?

        /// 用户ID，是用户全局唯一标识，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case status = "Status"
            case displayName = "DisplayName"
            case description = "Description"
            case lastUpdateTime = "LastUpdateTime"
            case creationTime = "CreationTime"
            case orgPath = "OrgPath"
            case phone = "Phone"
            case subjectGroups = "SubjectGroups"
            case email = "Email"
            case lastLoginTime = "LastLoginTime"
            case userId = "UserId"
        }
    }

    /// 用户属性搜索条件。
    public struct UserSearchCriteria: TCInputModel {
        /// 用户名，长度限制：64个字符。
        public let userName: String?

        /// 用户手机号。
        public let phone: String?

        /// 用户邮箱。
        public let email: String?

        /// 用户状态，取值 NORMAL （正常）、FREEZE （已冻结）、LOCKED （已锁定）或 NOT_ENABLED （未启用）。
        public let status: String?

        /// 用户创建时间，遵循 ISO 8601 标准。
        public let creationTime: String?

        /// 用户上次更新时间区间。
        public let lastUpdateTime: String?

        /// 名称匹配搜索，匹配范围包括：用户名称、用户ID。
        public let keyword: String?

        public init(userName: String? = nil, phone: String? = nil, email: String? = nil, status: String? = nil, creationTime: String? = nil, lastUpdateTime: String? = nil, keyword: String? = nil) {
            self.userName = userName
            self.phone = phone
            self.email = email
            self.status = status
            self.creationTime = creationTime
            self.lastUpdateTime = lastUpdateTime
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case phone = "Phone"
            case email = "Email"
            case status = "Status"
            case creationTime = "CreationTime"
            case lastUpdateTime = "LastUpdateTime"
            case keyword = "Keyword"
        }
    }
}
