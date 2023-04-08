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

extension Apigateway {
    /// BindEnvironment请求参数结构体
    public struct BindEnvironmentRequest: TCRequestModel {
        /// 待绑定的使用计划唯一 ID 列表。
        public let usagePlanIds: [String]

        /// 绑定类型，取值为API、SERVICE，默认值为SERVICE。
        public let bindType: String

        /// 待绑定的环境。
        public let environment: String

        /// 待绑定的服务唯一 ID。
        public let serviceId: String

        /// API唯一ID数组，当bindType=API时，需要传入此参数。
        public let apiIds: [String]?

        public init(usagePlanIds: [String], bindType: String, environment: String, serviceId: String, apiIds: [String]? = nil) {
            self.usagePlanIds = usagePlanIds
            self.bindType = bindType
            self.environment = environment
            self.serviceId = serviceId
            self.apiIds = apiIds
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanIds = "UsagePlanIds"
            case bindType = "BindType"
            case environment = "Environment"
            case serviceId = "ServiceId"
            case apiIds = "ApiIds"
        }
    }

    /// BindEnvironment返回参数结构体
    public struct BindEnvironmentResponse: TCResponseModel {
        /// 绑定操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 绑定使用计划到服务或API
    ///
    /// 本接口（BindEnvironment）用于绑定使用计划到服务或API。
    /// 用户在发布服务到某个环境中后，如果 API 需要鉴权，还需要绑定使用计划才能进行调用，此接口用户将使用计划绑定到特定环境。
    /// 目前支持绑定使用计划到API，但是同一个服务不能同时存在绑定到服务的使用计划和绑定到API的使用计划，所以对已经绑定过服务级别使用计划的环境，请先使用 服务级别使用计划降级 接口进行降级操作。
    @inlinable
    public func bindEnvironment(_ input: BindEnvironmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindEnvironmentResponse> {
        self.client.execute(action: "BindEnvironment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定使用计划到服务或API
    ///
    /// 本接口（BindEnvironment）用于绑定使用计划到服务或API。
    /// 用户在发布服务到某个环境中后，如果 API 需要鉴权，还需要绑定使用计划才能进行调用，此接口用户将使用计划绑定到特定环境。
    /// 目前支持绑定使用计划到API，但是同一个服务不能同时存在绑定到服务的使用计划和绑定到API的使用计划，所以对已经绑定过服务级别使用计划的环境，请先使用 服务级别使用计划降级 接口进行降级操作。
    @inlinable
    public func bindEnvironment(_ input: BindEnvironmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindEnvironmentResponse {
        try await self.client.execute(action: "BindEnvironment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定使用计划到服务或API
    ///
    /// 本接口（BindEnvironment）用于绑定使用计划到服务或API。
    /// 用户在发布服务到某个环境中后，如果 API 需要鉴权，还需要绑定使用计划才能进行调用，此接口用户将使用计划绑定到特定环境。
    /// 目前支持绑定使用计划到API，但是同一个服务不能同时存在绑定到服务的使用计划和绑定到API的使用计划，所以对已经绑定过服务级别使用计划的环境，请先使用 服务级别使用计划降级 接口进行降级操作。
    @inlinable
    public func bindEnvironment(usagePlanIds: [String], bindType: String, environment: String, serviceId: String, apiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindEnvironmentResponse> {
        self.bindEnvironment(.init(usagePlanIds: usagePlanIds, bindType: bindType, environment: environment, serviceId: serviceId, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定使用计划到服务或API
    ///
    /// 本接口（BindEnvironment）用于绑定使用计划到服务或API。
    /// 用户在发布服务到某个环境中后，如果 API 需要鉴权，还需要绑定使用计划才能进行调用，此接口用户将使用计划绑定到特定环境。
    /// 目前支持绑定使用计划到API，但是同一个服务不能同时存在绑定到服务的使用计划和绑定到API的使用计划，所以对已经绑定过服务级别使用计划的环境，请先使用 服务级别使用计划降级 接口进行降级操作。
    @inlinable
    public func bindEnvironment(usagePlanIds: [String], bindType: String, environment: String, serviceId: String, apiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindEnvironmentResponse {
        try await self.bindEnvironment(.init(usagePlanIds: usagePlanIds, bindType: bindType, environment: environment, serviceId: serviceId, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }
}
