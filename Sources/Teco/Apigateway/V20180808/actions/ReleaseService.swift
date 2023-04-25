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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Apigateway {
    /// ReleaseService请求参数结构体
    public struct ReleaseServiceRequest: TCRequestModel {
        /// 待发布服务的唯一 ID。
        public let serviceId: String

        /// 待发布的环境名称，当前支持三个环境，test（测试环境）、prepub（预发布环境）和 release（发布环境）。
        public let environmentName: String

        /// 本次的发布描述。
        public let releaseDesc: String

        /// apiId列表，预留字段，默认全量api发布。
        public let apiIds: [String]?

        public init(serviceId: String, environmentName: String, releaseDesc: String, apiIds: [String]? = nil) {
            self.serviceId = serviceId
            self.environmentName = environmentName
            self.releaseDesc = releaseDesc
            self.apiIds = apiIds
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case environmentName = "EnvironmentName"
            case releaseDesc = "ReleaseDesc"
            case apiIds = "ApiIds"
        }
    }

    /// ReleaseService返回参数结构体
    public struct ReleaseServiceResponse: TCResponseModel {
        /// 发布信息。
        public let result: ReleaseService

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 发布服务
    ///
    /// 本接口（ReleaseService）用于发布服务。
    /// API 网关的服务创建后，需要发布到某个环境方生效后，使用者才能进行调用，此接口用于发布服务到环境，如 release 环境。
    @inlinable
    public func releaseService(_ input: ReleaseServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseServiceResponse> {
        self.client.execute(action: "ReleaseService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布服务
    ///
    /// 本接口（ReleaseService）用于发布服务。
    /// API 网关的服务创建后，需要发布到某个环境方生效后，使用者才能进行调用，此接口用于发布服务到环境，如 release 环境。
    @inlinable
    public func releaseService(_ input: ReleaseServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseServiceResponse {
        try await self.client.execute(action: "ReleaseService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布服务
    ///
    /// 本接口（ReleaseService）用于发布服务。
    /// API 网关的服务创建后，需要发布到某个环境方生效后，使用者才能进行调用，此接口用于发布服务到环境，如 release 环境。
    @inlinable
    public func releaseService(serviceId: String, environmentName: String, releaseDesc: String, apiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseServiceResponse> {
        self.releaseService(.init(serviceId: serviceId, environmentName: environmentName, releaseDesc: releaseDesc, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 发布服务
    ///
    /// 本接口（ReleaseService）用于发布服务。
    /// API 网关的服务创建后，需要发布到某个环境方生效后，使用者才能进行调用，此接口用于发布服务到环境，如 release 环境。
    @inlinable
    public func releaseService(serviceId: String, environmentName: String, releaseDesc: String, apiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseServiceResponse {
        try await self.releaseService(.init(serviceId: serviceId, environmentName: environmentName, releaseDesc: releaseDesc, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }
}
