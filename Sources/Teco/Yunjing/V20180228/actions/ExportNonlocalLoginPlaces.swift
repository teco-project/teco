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

extension Yunjing {
    /// ExportNonlocalLoginPlaces请求参数结构体
    public struct ExportNonlocalLoginPlacesRequest: TCRequest {
        public init() {
        }
    }

    /// ExportNonlocalLoginPlaces返回参数结构体
    public struct ExportNonlocalLoginPlacesResponse: TCResponse {
        /// 导出文件下载链接地址。
        public let downloadUrl: String

        /// 导出任务ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出异地登录记录
    ///
    /// 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。
    @inlinable
    public func exportNonlocalLoginPlaces(_ input: ExportNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportNonlocalLoginPlacesResponse> {
        self.client.execute(action: "ExportNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出异地登录记录
    ///
    /// 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。
    @inlinable
    public func exportNonlocalLoginPlaces(_ input: ExportNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "ExportNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出异地登录记录
    ///
    /// 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。
    @inlinable
    public func exportNonlocalLoginPlaces(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportNonlocalLoginPlacesResponse> {
        self.exportNonlocalLoginPlaces(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 导出异地登录记录
    ///
    /// 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。
    @inlinable
    public func exportNonlocalLoginPlaces(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportNonlocalLoginPlacesResponse {
        try await self.exportNonlocalLoginPlaces(.init(), region: region, logger: logger, on: eventLoop)
    }
}
