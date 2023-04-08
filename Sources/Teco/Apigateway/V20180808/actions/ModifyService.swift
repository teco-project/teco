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

extension Apigateway {
    /// ModifyService请求参数结构体
    public struct ModifyServiceRequest: TCRequestModel {
        /// 待修改服务的唯一 Id。
        public let serviceId: String

        /// 修改后的服务名称。
        public let serviceName: String?

        /// 修改后的服务描述。
        public let serviceDesc: String?

        /// 修改后的服务前端请求类型，如 http、https和 http&https。
        public let `protocol`: String?

        /// 网络类型列表，用于指定支持的访问类型，INNER为内网访问，OUTER为外网访问。默认为OUTER。
        public let netTypes: [String]?

        public init(serviceId: String, serviceName: String? = nil, serviceDesc: String? = nil, protocol: String? = nil, netTypes: [String]? = nil) {
            self.serviceId = serviceId
            self.serviceName = serviceName
            self.serviceDesc = serviceDesc
            self.protocol = `protocol`
            self.netTypes = netTypes
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case serviceName = "ServiceName"
            case serviceDesc = "ServiceDesc"
            case `protocol` = "Protocol"
            case netTypes = "NetTypes"
        }
    }

    /// ModifyService返回参数结构体
    public struct ModifyServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改服务
    ///
    /// 本接口（ModifyService）用于修改服务的相关信息。当服务创建后，服务的名称、描述和服务类型均可被修改。
    @inlinable @discardableResult
    public func modifyService(_ input: ModifyServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceResponse> {
        self.client.execute(action: "ModifyService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改服务
    ///
    /// 本接口（ModifyService）用于修改服务的相关信息。当服务创建后，服务的名称、描述和服务类型均可被修改。
    @inlinable @discardableResult
    public func modifyService(_ input: ModifyServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceResponse {
        try await self.client.execute(action: "ModifyService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改服务
    ///
    /// 本接口（ModifyService）用于修改服务的相关信息。当服务创建后，服务的名称、描述和服务类型均可被修改。
    @inlinable @discardableResult
    public func modifyService(serviceId: String, serviceName: String? = nil, serviceDesc: String? = nil, protocol: String? = nil, netTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceResponse> {
        self.modifyService(.init(serviceId: serviceId, serviceName: serviceName, serviceDesc: serviceDesc, protocol: `protocol`, netTypes: netTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 修改服务
    ///
    /// 本接口（ModifyService）用于修改服务的相关信息。当服务创建后，服务的名称、描述和服务类型均可被修改。
    @inlinable @discardableResult
    public func modifyService(serviceId: String, serviceName: String? = nil, serviceDesc: String? = nil, protocol: String? = nil, netTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceResponse {
        try await self.modifyService(.init(serviceId: serviceId, serviceName: serviceName, serviceDesc: serviceDesc, protocol: `protocol`, netTypes: netTypes), region: region, logger: logger, on: eventLoop)
    }
}
