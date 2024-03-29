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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Apigateway {
    /// DescribeServiceForApiApp请求参数结构体
    public struct DescribeServiceForApiAppRequest: TCRequest {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        /// 服务所属的地域
        public let apiRegion: String

        public init(serviceId: String, apiRegion: String) {
            self.serviceId = serviceId
            self.apiRegion = apiRegion
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case apiRegion = "ApiRegion"
        }
    }

    /// DescribeServiceForApiApp返回参数结构体
    public struct DescribeServiceForApiAppResponse: TCResponse {
        /// 服务唯一ID。
        public let serviceId: String

        /// 服务 环境列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let availableEnvironments: [String]?

        /// 服务名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceName: String?

        /// 服务描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceDesc: String?

        /// 服务支持协议，可选值为http、https、http&https。
        public let `protocol`: String

        /// 服务创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date?

        /// 服务修改时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$modifiedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedTime: Date?

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
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apiTotalCount: Int64?

        /// API列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apiIdStatusSet: [ApiIdStatus]?

        /// 使用计划总数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usagePlanTotalCount: Int64?

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
            case requestId = "RequestId"
        }
    }

    /// 应用使用者查询服务详情
    ///
    /// 本接口（DescribeServiceForApiApp）用于应用使用者查询一个服务的详细信息、包括服务的描述、域名、协议等信息。
    @inlinable
    public func describeServiceForApiApp(_ input: DescribeServiceForApiAppRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceForApiAppResponse> {
        self.client.execute(action: "DescribeServiceForApiApp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用使用者查询服务详情
    ///
    /// 本接口（DescribeServiceForApiApp）用于应用使用者查询一个服务的详细信息、包括服务的描述、域名、协议等信息。
    @inlinable
    public func describeServiceForApiApp(_ input: DescribeServiceForApiAppRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceForApiAppResponse {
        try await self.client.execute(action: "DescribeServiceForApiApp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用使用者查询服务详情
    ///
    /// 本接口（DescribeServiceForApiApp）用于应用使用者查询一个服务的详细信息、包括服务的描述、域名、协议等信息。
    @inlinable
    public func describeServiceForApiApp(serviceId: String, apiRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceForApiAppResponse> {
        self.describeServiceForApiApp(.init(serviceId: serviceId, apiRegion: apiRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 应用使用者查询服务详情
    ///
    /// 本接口（DescribeServiceForApiApp）用于应用使用者查询一个服务的详细信息、包括服务的描述、域名、协议等信息。
    @inlinable
    public func describeServiceForApiApp(serviceId: String, apiRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceForApiAppResponse {
        try await self.describeServiceForApiApp(.init(serviceId: serviceId, apiRegion: apiRegion), region: region, logger: logger, on: eventLoop)
    }
}
