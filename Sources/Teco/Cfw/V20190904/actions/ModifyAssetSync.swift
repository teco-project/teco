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

extension Cfw {
    /// ModifyAssetSync请求参数结构体
    public struct ModifyAssetSyncRequest: TCRequest {
        public init() {
        }
    }

    /// ModifyAssetSync返回参数结构体
    public struct ModifyAssetSyncResponse: TCResponse {
        /// 返回状态
        /// 0 请求成功
        /// 2 请求失败
        /// 3 请求失败-频率限制
        public let status: Int64

        /// success 成功
        /// 其他失败
        public let returnMsg: String?

        /// 0 成功
        /// 非0 失败
        public let returnCode: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case returnMsg = "ReturnMsg"
            case returnCode = "ReturnCode"
            case requestId = "RequestId"
        }
    }

    /// 资产同步
    @inlinable
    public func modifyAssetSync(_ input: ModifyAssetSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAssetSyncResponse> {
        self.client.execute(action: "ModifyAssetSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 资产同步
    @inlinable
    public func modifyAssetSync(_ input: ModifyAssetSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetSyncResponse {
        try await self.client.execute(action: "ModifyAssetSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 资产同步
    @inlinable
    public func modifyAssetSync(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAssetSyncResponse> {
        self.modifyAssetSync(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 资产同步
    @inlinable
    public func modifyAssetSync(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetSyncResponse {
        try await self.modifyAssetSync(.init(), region: region, logger: logger, on: eventLoop)
    }
}