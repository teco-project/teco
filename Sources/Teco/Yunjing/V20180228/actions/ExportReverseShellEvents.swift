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

extension Yunjing {
    /// ExportReverseShellEvents请求参数结构体
    public struct ExportReverseShellEventsRequest: TCRequestModel {
        public init() {
        }
    }

    /// ExportReverseShellEvents返回参数结构体
    public struct ExportReverseShellEventsResponse: TCResponseModel {
        /// 导出文件下载链接地址。
        public let downloadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 导出反弹Shell事件
    @inlinable
    public func exportReverseShellEvents(_ input: ExportReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportReverseShellEventsResponse> {
        self.client.execute(action: "ExportReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出反弹Shell事件
    @inlinable
    public func exportReverseShellEvents(_ input: ExportReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportReverseShellEventsResponse {
        try await self.client.execute(action: "ExportReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出反弹Shell事件
    @inlinable
    public func exportReverseShellEvents(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportReverseShellEventsResponse> {
        let input = ExportReverseShellEventsRequest()
        return self.client.execute(action: "ExportReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出反弹Shell事件
    @inlinable
    public func exportReverseShellEvents(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportReverseShellEventsResponse {
        let input = ExportReverseShellEventsRequest()
        return try await self.client.execute(action: "ExportReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
