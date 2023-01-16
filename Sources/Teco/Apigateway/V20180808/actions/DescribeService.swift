//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Apigateway {
    /// DescribeService请求参数结构体
    public struct DescribeServiceRequest: TCRequestModel {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        public init(serviceId: String) {
            self.serviceId = serviceId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
        }
    }

    /// DescribeService返回参数结构体
    public struct DescribeServiceResponse: TCResponseModel {
        /// 服务唯一ID。
        public let serviceId: String

        /// 服务 环境列表。
        public let availableEnvironments: [String]

        /// 服务名称。
        public let serviceName: String

        /// 服务描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceDesc: String?

        /// 服务支持协议，可选值为http、https、http&https。
        public let `protocol`: String

        /// 服务创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 服务修改时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedTime: Date

        /// 独立集群名称。
        public let exclusiveSetName: String

        /// 网络类型列表，INNER为内网访问，OUTER为外网访问。
        public let netTypes: [String]

        /// 内网访问子域名。
        public let internalSubDomain: String

        /// 外网访问子域名。
        public let outerSubDomain: String

        /// 内网访问http服务端口号。
        public let innerHttpPort: Int64

        /// 内网访问https端口号。
        public let innerHttpsPort: Int64

        /// API总数。
        public let apiTotalCount: Int64

        /// API列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apiIdStatusSet: [ApiIdStatus]?

        /// 使用计划总数量。
        public let usagePlanTotalCount: Int64

        /// 使用计划数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usagePlanList: [UsagePlan]?

        /// IP版本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipVersion: String?

        /// 此服务的用户类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userType: String?

        /// 预留字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let setId: Int64?

        /// 服务绑定的标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 独享实例id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 独享实例name
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceName: String?

        /// 集群类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let setType: String?

        /// 服务部署的集群类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deploymentType: String?

        /// 特殊用途, NULL和DEFAULT表示无特殊用途，其他用途如HTTP_DNS等
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let specialUse: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case availableEnvironments = "AvailableEnvironments"
            case serviceName = "ServiceName"
            case serviceDesc = "ServiceDesc"
            case `protocol` = "Protocol"
            case createdTime = "CreatedTime"
            case modifiedTime = "ModifiedTime"
            case exclusiveSetName = "ExclusiveSetName"
            case netTypes = "NetTypes"
            case internalSubDomain = "InternalSubDomain"
            case outerSubDomain = "OuterSubDomain"
            case innerHttpPort = "InnerHttpPort"
            case innerHttpsPort = "InnerHttpsPort"
            case apiTotalCount = "ApiTotalCount"
            case apiIdStatusSet = "ApiIdStatusSet"
            case usagePlanTotalCount = "UsagePlanTotalCount"
            case usagePlanList = "UsagePlanList"
            case ipVersion = "IpVersion"
            case userType = "UserType"
            case setId = "SetId"
            case tags = "Tags"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case setType = "SetType"
            case deploymentType = "DeploymentType"
            case specialUse = "SpecialUse"
            case requestId = "RequestId"
        }
    }

    /// 查询服务详情
    ///
    /// 本接口（DescribeService）用于查询一个服务的详细信息、包括服务的描述、域名、协议、创建时间、发布情况等信息。
    @inlinable
    public func describeService(_ input: DescribeServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceResponse> {
        self.client.execute(action: "DescribeService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务详情
    ///
    /// 本接口（DescribeService）用于查询一个服务的详细信息、包括服务的描述、域名、协议、创建时间、发布情况等信息。
    @inlinable
    public func describeService(_ input: DescribeServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceResponse {
        try await self.client.execute(action: "DescribeService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务详情
    ///
    /// 本接口（DescribeService）用于查询一个服务的详细信息、包括服务的描述、域名、协议、创建时间、发布情况等信息。
    @inlinable
    public func describeService(serviceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceResponse> {
        self.describeService(DescribeServiceRequest(serviceId: serviceId), logger: logger, on: eventLoop)
    }

    /// 查询服务详情
    ///
    /// 本接口（DescribeService）用于查询一个服务的详细信息、包括服务的描述、域名、协议、创建时间、发布情况等信息。
    @inlinable
    public func describeService(serviceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceResponse {
        try await self.describeService(DescribeServiceRequest(serviceId: serviceId), logger: logger, on: eventLoop)
    }
}
