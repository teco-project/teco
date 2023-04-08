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

extension Cme {
    /// DeleteVideoEncodingPreset请求参数结构体
    public struct DeleteVideoEncodingPresetRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 要删除的视频编码配置 ID。
        public let id: UInt64

        public init(platform: String, id: UInt64) {
            self.platform = platform
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case id = "Id"
        }
    }

    /// DeleteVideoEncodingPreset返回参数结构体
    public struct DeleteVideoEncodingPresetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除视频编码配置
    ///
    /// 删除指定 ID 的视频编码配置
    @inlinable @discardableResult
    public func deleteVideoEncodingPreset(_ input: DeleteVideoEncodingPresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVideoEncodingPresetResponse> {
        self.client.execute(action: "DeleteVideoEncodingPreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除视频编码配置
    ///
    /// 删除指定 ID 的视频编码配置
    @inlinable @discardableResult
    public func deleteVideoEncodingPreset(_ input: DeleteVideoEncodingPresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVideoEncodingPresetResponse {
        try await self.client.execute(action: "DeleteVideoEncodingPreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除视频编码配置
    ///
    /// 删除指定 ID 的视频编码配置
    @inlinable @discardableResult
    public func deleteVideoEncodingPreset(platform: String, id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVideoEncodingPresetResponse> {
        self.deleteVideoEncodingPreset(.init(platform: platform, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除视频编码配置
    ///
    /// 删除指定 ID 的视频编码配置
    @inlinable @discardableResult
    public func deleteVideoEncodingPreset(platform: String, id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVideoEncodingPresetResponse {
        try await self.deleteVideoEncodingPreset(.init(platform: platform, id: id), region: region, logger: logger, on: eventLoop)
    }
}
