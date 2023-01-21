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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Apigateway {
    /// CreateService请求参数结构体
    public struct CreateServiceRequest: TCRequestModel {
        /// 用户自定义的服务名称。
        public let serviceName: String

        /// 服务的前端请求类型。如 http、https、http&https。
        public let `protocol`: String

        /// 用户自定义的服务描述。
        public let serviceDesc: String?

        /// 独立集群名称，用于指定创建服务所在的独立集群。
        public let exclusiveSetName: String?

        /// 网络类型列表，用于指定支持的访问类型，INNER为内网访问，OUTER为外网访问。默认为OUTER。
        public let netTypes: [String]?

        /// IP版本号，支持IPv4和IPv6，默认为IPv4。
        public let ipVersion: String?

        /// 集群名称。保留字段，tsf serverlss类型使用。
        public let setServerName: String?

        /// 用户类型。保留类型，serverless用户使用。
        public let appIdType: String?

        /// 标签。
        public let tags: [Tag]?

        /// 独享实例id
        public let instanceId: String?

        /// vpc属性
        public let uniqVpcId: String?

        public init(serviceName: String, protocol: String, serviceDesc: String? = nil, exclusiveSetName: String? = nil, netTypes: [String]? = nil, ipVersion: String? = nil, setServerName: String? = nil, appIdType: String? = nil, tags: [Tag]? = nil, instanceId: String? = nil, uniqVpcId: String? = nil) {
            self.serviceName = serviceName
            self.`protocol` = `protocol`
            self.serviceDesc = serviceDesc
            self.exclusiveSetName = exclusiveSetName
            self.netTypes = netTypes
            self.ipVersion = ipVersion
            self.setServerName = setServerName
            self.appIdType = appIdType
            self.tags = tags
            self.instanceId = instanceId
            self.uniqVpcId = uniqVpcId
        }

        enum CodingKeys: String, CodingKey {
            case serviceName = "ServiceName"
            case `protocol` = "Protocol"
            case serviceDesc = "ServiceDesc"
            case exclusiveSetName = "ExclusiveSetName"
            case netTypes = "NetTypes"
            case ipVersion = "IpVersion"
            case setServerName = "SetServerName"
            case appIdType = "AppIdType"
            case tags = "Tags"
            case instanceId = "InstanceId"
            case uniqVpcId = "UniqVpcId"
        }
    }

    /// CreateService返回参数结构体
    public struct CreateServiceResponse: TCResponseModel {
        /// 服务唯一ID。
        public let serviceId: String

        /// 用户自定义服务名称。
        public let serviceName: String

        /// 用户自定义服务描述。
        public let serviceDesc: String

        /// 外网默认域名。
        public let outerSubDomain: String

        /// vpc内网默认域名。
        public let innerSubDomain: String

        /// 服务创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 网络类型列表，INNER为内网访问，OUTER为外网访问。
        public let netTypes: [String]

        /// IP版本号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipVersion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case serviceName = "ServiceName"
            case serviceDesc = "ServiceDesc"
            case outerSubDomain = "OuterSubDomain"
            case innerSubDomain = "InnerSubDomain"
            case createdTime = "CreatedTime"
            case netTypes = "NetTypes"
            case ipVersion = "IpVersion"
            case requestId = "RequestId"
        }
    }

    /// 创建服务
    ///
    /// 本接口（CreateService）用于创建服务。
    /// API 网关使用的最大单元为服务，每个服务中可创建多个 API 接口。每个服务有一个默认域名供客户调用，用户也可绑定自定义域名到此服务中。
    @inlinable
    public func createService(_ input: CreateServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceResponse> {
        self.client.execute(action: "CreateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建服务
    ///
    /// 本接口（CreateService）用于创建服务。
    /// API 网关使用的最大单元为服务，每个服务中可创建多个 API 接口。每个服务有一个默认域名供客户调用，用户也可绑定自定义域名到此服务中。
    @inlinable
    public func createService(_ input: CreateServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        try await self.client.execute(action: "CreateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建服务
    ///
    /// 本接口（CreateService）用于创建服务。
    /// API 网关使用的最大单元为服务，每个服务中可创建多个 API 接口。每个服务有一个默认域名供客户调用，用户也可绑定自定义域名到此服务中。
    @inlinable
    public func createService(serviceName: String, protocol: String, serviceDesc: String? = nil, exclusiveSetName: String? = nil, netTypes: [String]? = nil, ipVersion: String? = nil, setServerName: String? = nil, appIdType: String? = nil, tags: [Tag]? = nil, instanceId: String? = nil, uniqVpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceResponse> {
        self.createService(CreateServiceRequest(serviceName: serviceName, protocol: `protocol`, serviceDesc: serviceDesc, exclusiveSetName: exclusiveSetName, netTypes: netTypes, ipVersion: ipVersion, setServerName: setServerName, appIdType: appIdType, tags: tags, instanceId: instanceId, uniqVpcId: uniqVpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建服务
    ///
    /// 本接口（CreateService）用于创建服务。
    /// API 网关使用的最大单元为服务，每个服务中可创建多个 API 接口。每个服务有一个默认域名供客户调用，用户也可绑定自定义域名到此服务中。
    @inlinable
    public func createService(serviceName: String, protocol: String, serviceDesc: String? = nil, exclusiveSetName: String? = nil, netTypes: [String]? = nil, ipVersion: String? = nil, setServerName: String? = nil, appIdType: String? = nil, tags: [Tag]? = nil, instanceId: String? = nil, uniqVpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        try await self.createService(CreateServiceRequest(serviceName: serviceName, protocol: `protocol`, serviceDesc: serviceDesc, exclusiveSetName: exclusiveSetName, netTypes: netTypes, ipVersion: ipVersion, setServerName: setServerName, appIdType: appIdType, tags: tags, instanceId: instanceId, uniqVpcId: uniqVpcId), region: region, logger: logger, on: eventLoop)
    }
}
