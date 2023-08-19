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

extension Tem {
    /// RevertDeployApplication请求参数结构体
    public struct RevertDeployApplicationRequest: TCRequest {
        /// 需要回滚的服务id
        public let applicationId: String?

        /// 需要回滚的服务所在环境id
        public let environmentId: String?

        public init(applicationId: String? = nil, environmentId: String? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
        }
    }

    /// RevertDeployApplication返回参数结构体
    public struct RevertDeployApplicationResponse: TCResponse {
        /// 是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 回滚分批发布
    @inlinable
    public func revertDeployApplication(_ input: RevertDeployApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevertDeployApplicationResponse> {
        self.client.execute(action: "RevertDeployApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回滚分批发布
    @inlinable
    public func revertDeployApplication(_ input: RevertDeployApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevertDeployApplicationResponse {
        try await self.client.execute(action: "RevertDeployApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回滚分批发布
    @inlinable
    public func revertDeployApplication(applicationId: String? = nil, environmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevertDeployApplicationResponse> {
        self.revertDeployApplication(.init(applicationId: applicationId, environmentId: environmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 回滚分批发布
    @inlinable
    public func revertDeployApplication(applicationId: String? = nil, environmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevertDeployApplicationResponse {
        try await self.revertDeployApplication(.init(applicationId: applicationId, environmentId: environmentId), region: region, logger: logger, on: eventLoop)
    }
}
