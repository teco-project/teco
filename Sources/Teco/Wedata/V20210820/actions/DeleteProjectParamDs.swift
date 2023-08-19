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

extension Wedata {
    /// DeleteProjectParamDs请求参数结构体
    public struct DeleteProjectParamDsRequest: TCRequest {
        /// 参数名
        public let paramKey: String?

        /// 项目id
        public let projectId: String?

        public init(paramKey: String? = nil, projectId: String? = nil) {
            self.paramKey = paramKey
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case paramKey = "ParamKey"
            case projectId = "ProjectId"
        }
    }

    /// DeleteProjectParamDs返回参数结构体
    public struct DeleteProjectParamDsResponse: TCResponse {
        /// 结果
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除项目参数
    @inlinable
    public func deleteProjectParamDs(_ input: DeleteProjectParamDsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectParamDsResponse> {
        self.client.execute(action: "DeleteProjectParamDs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除项目参数
    @inlinable
    public func deleteProjectParamDs(_ input: DeleteProjectParamDsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectParamDsResponse {
        try await self.client.execute(action: "DeleteProjectParamDs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除项目参数
    @inlinable
    public func deleteProjectParamDs(paramKey: String? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectParamDsResponse> {
        self.deleteProjectParamDs(.init(paramKey: paramKey, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除项目参数
    @inlinable
    public func deleteProjectParamDs(paramKey: String? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectParamDsResponse {
        try await self.deleteProjectParamDs(.init(paramKey: paramKey, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
