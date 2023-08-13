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

extension Vpc {
    /// CreateSecurityGroupWithPolicies请求参数结构体
    public struct CreateSecurityGroupWithPoliciesRequest: TCRequestModel {
        /// 安全组名称，可任意命名，但不得超过60个字符。
        public let groupName: String

        /// 安全组备注，最多100个字符。
        public let groupDescription: String

        /// 项目ID，默认0。可在[qcloud控制台项目管理页面](https://console.cloud.tencent.com/project)查询到。
        public let projectId: String?

        /// 安全组规则集合。
        public let securityGroupPolicySet: SecurityGroupPolicySet?

        public init(groupName: String, groupDescription: String, projectId: String? = nil, securityGroupPolicySet: SecurityGroupPolicySet? = nil) {
            self.groupName = groupName
            self.groupDescription = groupDescription
            self.projectId = projectId
            self.securityGroupPolicySet = securityGroupPolicySet
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupDescription = "GroupDescription"
            case projectId = "ProjectId"
            case securityGroupPolicySet = "SecurityGroupPolicySet"
        }
    }

    /// CreateSecurityGroupWithPolicies返回参数结构体
    public struct CreateSecurityGroupWithPoliciesResponse: TCResponseModel {
        /// 安全组对象。
        public let securityGroup: SecurityGroup

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroup = "SecurityGroup"
            case requestId = "RequestId"
        }
    }

    /// 创建安全组和规则
    ///
    /// 本接口（CreateSecurityGroupWithPolicies）用于创建新的安全组（SecurityGroup），并且可以同时添加安全组规则（SecurityGroupPolicy）。
    /// * 每个账户下每个地域的每个项目的[安全组数量限制](https://cloud.tencent.com/document/product/213/12453)。
    /// * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用[CreateSecurityGroupPolicies](https://cloud.tencent.com/document/product/215/15807)
    /// 将安全组的规则设置为需要的规则。
    ///
    /// 安全组规则说明：
    /// * Version安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。
    /// * Protocol字段支持输入TCP, UDP, ICMP, ICMPV6, GRE, ALL。
    /// * CidrBlock字段允许输入符合cidr格式标准的任意字符串。(展开)在基础网络中，如果CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * Ipv6CidrBlock字段允许输入符合IPv6 cidr格式标准的任意字符串。(展开)在基础网络中，如果Ipv6CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * SecurityGroupId字段允许输入与待修改的安全组位于相同项目中的安全组ID，包括这个安全组ID本身，代表安全组下所有云服务器的内网IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个ID所关联的云服务器变化而变化，不需要重新修改。
    /// * Port字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当Protocol字段是TCP或UDP时，Port字段才被接受，即Protocol字段不是TCP或UDP时，Protocol和Port是排他关系，不允许同时输入，否则会接口报错。
    /// * Action字段只允许输入ACCEPT或DROP。
    /// * CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate四者是排他关系，不允许同时输入，Protocol + Port和ServiceTemplate二者是排他关系，不允许同时输入。
    /// * 一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。
    @inlinable
    public func createSecurityGroupWithPolicies(_ input: CreateSecurityGroupWithPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityGroupWithPoliciesResponse> {
        self.client.execute(action: "CreateSecurityGroupWithPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建安全组和规则
    ///
    /// 本接口（CreateSecurityGroupWithPolicies）用于创建新的安全组（SecurityGroup），并且可以同时添加安全组规则（SecurityGroupPolicy）。
    /// * 每个账户下每个地域的每个项目的[安全组数量限制](https://cloud.tencent.com/document/product/213/12453)。
    /// * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用[CreateSecurityGroupPolicies](https://cloud.tencent.com/document/product/215/15807)
    /// 将安全组的规则设置为需要的规则。
    ///
    /// 安全组规则说明：
    /// * Version安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。
    /// * Protocol字段支持输入TCP, UDP, ICMP, ICMPV6, GRE, ALL。
    /// * CidrBlock字段允许输入符合cidr格式标准的任意字符串。(展开)在基础网络中，如果CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * Ipv6CidrBlock字段允许输入符合IPv6 cidr格式标准的任意字符串。(展开)在基础网络中，如果Ipv6CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * SecurityGroupId字段允许输入与待修改的安全组位于相同项目中的安全组ID，包括这个安全组ID本身，代表安全组下所有云服务器的内网IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个ID所关联的云服务器变化而变化，不需要重新修改。
    /// * Port字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当Protocol字段是TCP或UDP时，Port字段才被接受，即Protocol字段不是TCP或UDP时，Protocol和Port是排他关系，不允许同时输入，否则会接口报错。
    /// * Action字段只允许输入ACCEPT或DROP。
    /// * CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate四者是排他关系，不允许同时输入，Protocol + Port和ServiceTemplate二者是排他关系，不允许同时输入。
    /// * 一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。
    @inlinable
    public func createSecurityGroupWithPolicies(_ input: CreateSecurityGroupWithPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupWithPoliciesResponse {
        try await self.client.execute(action: "CreateSecurityGroupWithPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建安全组和规则
    ///
    /// 本接口（CreateSecurityGroupWithPolicies）用于创建新的安全组（SecurityGroup），并且可以同时添加安全组规则（SecurityGroupPolicy）。
    /// * 每个账户下每个地域的每个项目的[安全组数量限制](https://cloud.tencent.com/document/product/213/12453)。
    /// * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用[CreateSecurityGroupPolicies](https://cloud.tencent.com/document/product/215/15807)
    /// 将安全组的规则设置为需要的规则。
    ///
    /// 安全组规则说明：
    /// * Version安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。
    /// * Protocol字段支持输入TCP, UDP, ICMP, ICMPV6, GRE, ALL。
    /// * CidrBlock字段允许输入符合cidr格式标准的任意字符串。(展开)在基础网络中，如果CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * Ipv6CidrBlock字段允许输入符合IPv6 cidr格式标准的任意字符串。(展开)在基础网络中，如果Ipv6CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * SecurityGroupId字段允许输入与待修改的安全组位于相同项目中的安全组ID，包括这个安全组ID本身，代表安全组下所有云服务器的内网IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个ID所关联的云服务器变化而变化，不需要重新修改。
    /// * Port字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当Protocol字段是TCP或UDP时，Port字段才被接受，即Protocol字段不是TCP或UDP时，Protocol和Port是排他关系，不允许同时输入，否则会接口报错。
    /// * Action字段只允许输入ACCEPT或DROP。
    /// * CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate四者是排他关系，不允许同时输入，Protocol + Port和ServiceTemplate二者是排他关系，不允许同时输入。
    /// * 一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。
    @inlinable
    public func createSecurityGroupWithPolicies(groupName: String, groupDescription: String, projectId: String? = nil, securityGroupPolicySet: SecurityGroupPolicySet? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityGroupWithPoliciesResponse> {
        self.createSecurityGroupWithPolicies(.init(groupName: groupName, groupDescription: groupDescription, projectId: projectId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }

    /// 创建安全组和规则
    ///
    /// 本接口（CreateSecurityGroupWithPolicies）用于创建新的安全组（SecurityGroup），并且可以同时添加安全组规则（SecurityGroupPolicy）。
    /// * 每个账户下每个地域的每个项目的[安全组数量限制](https://cloud.tencent.com/document/product/213/12453)。
    /// * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用[CreateSecurityGroupPolicies](https://cloud.tencent.com/document/product/215/15807)
    /// 将安全组的规则设置为需要的规则。
    ///
    /// 安全组规则说明：
    /// * Version安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。
    /// * Protocol字段支持输入TCP, UDP, ICMP, ICMPV6, GRE, ALL。
    /// * CidrBlock字段允许输入符合cidr格式标准的任意字符串。(展开)在基础网络中，如果CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * Ipv6CidrBlock字段允许输入符合IPv6 cidr格式标准的任意字符串。(展开)在基础网络中，如果Ipv6CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
    /// * SecurityGroupId字段允许输入与待修改的安全组位于相同项目中的安全组ID，包括这个安全组ID本身，代表安全组下所有云服务器的内网IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个ID所关联的云服务器变化而变化，不需要重新修改。
    /// * Port字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当Protocol字段是TCP或UDP时，Port字段才被接受，即Protocol字段不是TCP或UDP时，Protocol和Port是排他关系，不允许同时输入，否则会接口报错。
    /// * Action字段只允许输入ACCEPT或DROP。
    /// * CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate四者是排他关系，不允许同时输入，Protocol + Port和ServiceTemplate二者是排他关系，不允许同时输入。
    /// * 一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。
    @inlinable
    public func createSecurityGroupWithPolicies(groupName: String, groupDescription: String, projectId: String? = nil, securityGroupPolicySet: SecurityGroupPolicySet? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupWithPoliciesResponse {
        try await self.createSecurityGroupWithPolicies(.init(groupName: groupName, groupDescription: groupDescription, projectId: projectId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }
}
