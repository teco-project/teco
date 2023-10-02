//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import Logging
import NIOCore
import TecoCore

extension Ess {
    /// CreateIntegrationRole请求参数结构体
    public struct CreateIntegrationRoleRequest: TCRequest {
        /// 角色名称，最大长度为20个字符，仅限中文、字母、数字和下划线组成。
        public let name: String

        /// 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        /// 支持填入集团子公司经办人 userId 代发合同。
        ///
        /// 注: 在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        public let `operator`: UserInfo

        /// 角色描述，最大长度为50个字符
        public let description: String?

        /// 角色类型，0:saas角色，1:集团角色
        /// 默认0，saas角色
        public let isGroupRole: Int64?

        /// 权限树
        public let permissionGroups: [PermissionGroup]?

        /// 集团角色的话，需要传递集团子企业列表，如果是全选，则传1
        public let subOrganizationIds: String?

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        public init(name: String, operator: UserInfo, description: String? = nil, isGroupRole: Int64? = nil, permissionGroups: [PermissionGroup]? = nil, subOrganizationIds: String? = nil, agent: Agent? = nil) {
            self.name = name
            self.operator = `operator`
            self.description = description
            self.isGroupRole = isGroupRole
            self.permissionGroups = permissionGroups
            self.subOrganizationIds = subOrganizationIds
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case `operator` = "Operator"
            case description = "Description"
            case isGroupRole = "IsGroupRole"
            case permissionGroups = "PermissionGroups"
            case subOrganizationIds = "SubOrganizationIds"
            case agent = "Agent"
        }
    }

    /// CreateIntegrationRole返回参数结构体
    public struct CreateIntegrationRoleResponse: TCResponse {
        /// 角色id
        public let roleId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
            case requestId = "RequestId"
        }
    }

    /// 创建企业角色
    ///
    /// 此接口（CreateIntegrationRole）用来创建企业自定义的SaaS角色或集团角色。
    ///
    /// 适用场景1：创建当前企业的自定义SaaS角色或集团角色，并且创建时不进行权限的设置（PermissionGroups 参数不传），角色中的权限内容可通过控制台编辑角色或通过接口 ModifyIntegrationRole 完成更新。
    ///
    /// 适用场景2：创建当前企业的自定义SaaS角色或集团角色，并且创建时进行权限的设置（PermissionGroups 参数要传），权限树内容 PermissionGroups 可参考接口 DescribeIntegrationRoles 的输出。
    /// 适用场景3：创建集团角色时可同时设置角色管理的子企业列表，可通过设置 SubOrganizationIds 参数达到此效果。
    ///
    /// 适用场景4：主企业代理子企业操作的场景，需要设置Agent参数，并且ProxyOrganizationId设置为子企业的id即可。
    ///
    /// 注意事项：SaaS角色和集团角色对应的权限树是不一样的。
    @inlinable
    public func createIntegrationRole(_ input: CreateIntegrationRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationRoleResponse> {
        self.client.execute(action: "CreateIntegrationRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建企业角色
    ///
    /// 此接口（CreateIntegrationRole）用来创建企业自定义的SaaS角色或集团角色。
    ///
    /// 适用场景1：创建当前企业的自定义SaaS角色或集团角色，并且创建时不进行权限的设置（PermissionGroups 参数不传），角色中的权限内容可通过控制台编辑角色或通过接口 ModifyIntegrationRole 完成更新。
    ///
    /// 适用场景2：创建当前企业的自定义SaaS角色或集团角色，并且创建时进行权限的设置（PermissionGroups 参数要传），权限树内容 PermissionGroups 可参考接口 DescribeIntegrationRoles 的输出。
    /// 适用场景3：创建集团角色时可同时设置角色管理的子企业列表，可通过设置 SubOrganizationIds 参数达到此效果。
    ///
    /// 适用场景4：主企业代理子企业操作的场景，需要设置Agent参数，并且ProxyOrganizationId设置为子企业的id即可。
    ///
    /// 注意事项：SaaS角色和集团角色对应的权限树是不一样的。
    @inlinable
    public func createIntegrationRole(_ input: CreateIntegrationRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationRoleResponse {
        try await self.client.execute(action: "CreateIntegrationRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建企业角色
    ///
    /// 此接口（CreateIntegrationRole）用来创建企业自定义的SaaS角色或集团角色。
    ///
    /// 适用场景1：创建当前企业的自定义SaaS角色或集团角色，并且创建时不进行权限的设置（PermissionGroups 参数不传），角色中的权限内容可通过控制台编辑角色或通过接口 ModifyIntegrationRole 完成更新。
    ///
    /// 适用场景2：创建当前企业的自定义SaaS角色或集团角色，并且创建时进行权限的设置（PermissionGroups 参数要传），权限树内容 PermissionGroups 可参考接口 DescribeIntegrationRoles 的输出。
    /// 适用场景3：创建集团角色时可同时设置角色管理的子企业列表，可通过设置 SubOrganizationIds 参数达到此效果。
    ///
    /// 适用场景4：主企业代理子企业操作的场景，需要设置Agent参数，并且ProxyOrganizationId设置为子企业的id即可。
    ///
    /// 注意事项：SaaS角色和集团角色对应的权限树是不一样的。
    @inlinable
    public func createIntegrationRole(name: String, operator: UserInfo, description: String? = nil, isGroupRole: Int64? = nil, permissionGroups: [PermissionGroup]? = nil, subOrganizationIds: String? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationRoleResponse> {
        self.createIntegrationRole(.init(name: name, operator: `operator`, description: description, isGroupRole: isGroupRole, permissionGroups: permissionGroups, subOrganizationIds: subOrganizationIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 创建企业角色
    ///
    /// 此接口（CreateIntegrationRole）用来创建企业自定义的SaaS角色或集团角色。
    ///
    /// 适用场景1：创建当前企业的自定义SaaS角色或集团角色，并且创建时不进行权限的设置（PermissionGroups 参数不传），角色中的权限内容可通过控制台编辑角色或通过接口 ModifyIntegrationRole 完成更新。
    ///
    /// 适用场景2：创建当前企业的自定义SaaS角色或集团角色，并且创建时进行权限的设置（PermissionGroups 参数要传），权限树内容 PermissionGroups 可参考接口 DescribeIntegrationRoles 的输出。
    /// 适用场景3：创建集团角色时可同时设置角色管理的子企业列表，可通过设置 SubOrganizationIds 参数达到此效果。
    ///
    /// 适用场景4：主企业代理子企业操作的场景，需要设置Agent参数，并且ProxyOrganizationId设置为子企业的id即可。
    ///
    /// 注意事项：SaaS角色和集团角色对应的权限树是不一样的。
    @inlinable
    public func createIntegrationRole(name: String, operator: UserInfo, description: String? = nil, isGroupRole: Int64? = nil, permissionGroups: [PermissionGroup]? = nil, subOrganizationIds: String? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationRoleResponse {
        try await self.createIntegrationRole(.init(name: name, operator: `operator`, description: description, isGroupRole: isGroupRole, permissionGroups: permissionGroups, subOrganizationIds: subOrganizationIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
