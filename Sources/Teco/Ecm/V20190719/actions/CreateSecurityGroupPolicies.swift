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

import TecoCore

extension Ecm {
    /// CreateSecurityGroupPolicies请求参数结构体
    public struct CreateSecurityGroupPoliciesRequest: TCRequestModel {
        /// 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String

        /// 安全组规则集合。
        public let securityGroupPolicySet: SecurityGroupPolicySet

        public init(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet) {
            self.securityGroupId = securityGroupId
            self.securityGroupPolicySet = securityGroupPolicySet
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case securityGroupPolicySet = "SecurityGroupPolicySet"
        }
    }

    /// CreateSecurityGroupPolicies返回参数结构体
    public struct CreateSecurityGroupPoliciesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全组添加规则
    ///
    /// <p>本接口（CreateSecurityGroupPolicies）用于创建安全组规则（SecurityGroupPolicy）。</p>
    /// <p>在 SecurityGroupPolicySet 参数中：</p>
    /// <ul>
    /// <li>Version 安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。</li>
    /// <li>在创建出站和入站规则（Egress 和 Ingress）时：<ul>
    /// <li>Protocol 字段支持输入TCP, UDP, ICMP, GRE, ALL。</li>
    /// <li>CidrBlock 字段允许输入符合cidr格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
    /// <li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个 ID 所关联的云服务器变化而变化，不需要重新修改。</li>
    /// <li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受，即 Protocol 字段不是 TCP 或 UDP 时，Protocol 和 Port 排他关系，不允许同时输入，否则会接口报错。</li>
    /// <li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
    /// <li>CidrBlock, SecurityGroupId, AddressTemplate 是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。</li>
    /// <li>一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。</li>
    /// </ul></li></ul>
    /// <p>默认接口请求频率限制：20次/秒。</p>
    @inlinable @discardableResult
    public func createSecurityGroupPolicies(_ input: CreateSecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityGroupPoliciesResponse> {
        self.client.execute(action: "CreateSecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全组添加规则
    ///
    /// <p>本接口（CreateSecurityGroupPolicies）用于创建安全组规则（SecurityGroupPolicy）。</p>
    /// <p>在 SecurityGroupPolicySet 参数中：</p>
    /// <ul>
    /// <li>Version 安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。</li>
    /// <li>在创建出站和入站规则（Egress 和 Ingress）时：<ul>
    /// <li>Protocol 字段支持输入TCP, UDP, ICMP, GRE, ALL。</li>
    /// <li>CidrBlock 字段允许输入符合cidr格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
    /// <li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个 ID 所关联的云服务器变化而变化，不需要重新修改。</li>
    /// <li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受，即 Protocol 字段不是 TCP 或 UDP 时，Protocol 和 Port 排他关系，不允许同时输入，否则会接口报错。</li>
    /// <li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
    /// <li>CidrBlock, SecurityGroupId, AddressTemplate 是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。</li>
    /// <li>一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。</li>
    /// </ul></li></ul>
    /// <p>默认接口请求频率限制：20次/秒。</p>
    @inlinable @discardableResult
    public func createSecurityGroupPolicies(_ input: CreateSecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupPoliciesResponse {
        try await self.client.execute(action: "CreateSecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全组添加规则
    ///
    /// <p>本接口（CreateSecurityGroupPolicies）用于创建安全组规则（SecurityGroupPolicy）。</p>
    /// <p>在 SecurityGroupPolicySet 参数中：</p>
    /// <ul>
    /// <li>Version 安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。</li>
    /// <li>在创建出站和入站规则（Egress 和 Ingress）时：<ul>
    /// <li>Protocol 字段支持输入TCP, UDP, ICMP, GRE, ALL。</li>
    /// <li>CidrBlock 字段允许输入符合cidr格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
    /// <li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个 ID 所关联的云服务器变化而变化，不需要重新修改。</li>
    /// <li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受，即 Protocol 字段不是 TCP 或 UDP 时，Protocol 和 Port 排他关系，不允许同时输入，否则会接口报错。</li>
    /// <li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
    /// <li>CidrBlock, SecurityGroupId, AddressTemplate 是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。</li>
    /// <li>一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。</li>
    /// </ul></li></ul>
    /// <p>默认接口请求频率限制：20次/秒。</p>
    @inlinable @discardableResult
    public func createSecurityGroupPolicies(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityGroupPoliciesResponse> {
        self.createSecurityGroupPolicies(.init(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }

    /// 安全组添加规则
    ///
    /// <p>本接口（CreateSecurityGroupPolicies）用于创建安全组规则（SecurityGroupPolicy）。</p>
    /// <p>在 SecurityGroupPolicySet 参数中：</p>
    /// <ul>
    /// <li>Version 安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。</li>
    /// <li>在创建出站和入站规则（Egress 和 Ingress）时：<ul>
    /// <li>Protocol 字段支持输入TCP, UDP, ICMP, GRE, ALL。</li>
    /// <li>CidrBlock 字段允许输入符合cidr格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
    /// <li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个 ID 所关联的云服务器变化而变化，不需要重新修改。</li>
    /// <li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受，即 Protocol 字段不是 TCP 或 UDP 时，Protocol 和 Port 排他关系，不允许同时输入，否则会接口报错。</li>
    /// <li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
    /// <li>CidrBlock, SecurityGroupId, AddressTemplate 是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。</li>
    /// <li>一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。</li>
    /// </ul></li></ul>
    /// <p>默认接口请求频率限制：20次/秒。</p>
    @inlinable @discardableResult
    public func createSecurityGroupPolicies(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupPoliciesResponse {
        try await self.createSecurityGroupPolicies(.init(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }
}
