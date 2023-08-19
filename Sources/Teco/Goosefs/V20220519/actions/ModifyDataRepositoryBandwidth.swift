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

extension Goosefs {
    /// ModifyDataRepositoryBandwidth请求参数结构体
    public struct ModifyDataRepositoryBandwidthRequest: TCRequest {
        /// 文件系统ID
        public let fileSystemId: String

        /// 带宽, 单位MB/S
        public let bandwidth: UInt64

        public init(fileSystemId: String, bandwidth: UInt64) {
            self.fileSystemId = fileSystemId
            self.bandwidth = bandwidth
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case bandwidth = "Bandwidth"
        }
    }

    /// ModifyDataRepositoryBandwidth返回参数结构体
    public struct ModifyDataRepositoryBandwidthResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据流动带宽
    @inlinable @discardableResult
    public func modifyDataRepositoryBandwidth(_ input: ModifyDataRepositoryBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDataRepositoryBandwidthResponse> {
        self.client.execute(action: "ModifyDataRepositoryBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据流动带宽
    @inlinable @discardableResult
    public func modifyDataRepositoryBandwidth(_ input: ModifyDataRepositoryBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDataRepositoryBandwidthResponse {
        try await self.client.execute(action: "ModifyDataRepositoryBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据流动带宽
    @inlinable @discardableResult
    public func modifyDataRepositoryBandwidth(fileSystemId: String, bandwidth: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDataRepositoryBandwidthResponse> {
        self.modifyDataRepositoryBandwidth(.init(fileSystemId: fileSystemId, bandwidth: bandwidth), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据流动带宽
    @inlinable @discardableResult
    public func modifyDataRepositoryBandwidth(fileSystemId: String, bandwidth: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDataRepositoryBandwidthResponse {
        try await self.modifyDataRepositoryBandwidth(.init(fileSystemId: fileSystemId, bandwidth: bandwidth), region: region, logger: logger, on: eventLoop)
    }
}
