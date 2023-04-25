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

extension Bm {
    /// ModifyPayModePre2Post请求参数结构体
    public struct ModifyPayModePre2PostRequest: TCRequestModel {
        /// 需要修改的设备ID列表
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// ModifyPayModePre2Post返回参数结构体
    public struct ModifyPayModePre2PostResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 将设备从预付费转换为后付费
    ///
    /// 将设备的预付费模式修改为后付费计费模式，支持批量转换。（前提是客户要加入黑石物理机后付费计费的白名单，申请黑石物理机后付费可以联系腾讯云客服）
    @inlinable @discardableResult
    public func modifyPayModePre2Post(_ input: ModifyPayModePre2PostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPayModePre2PostResponse> {
        self.client.execute(action: "ModifyPayModePre2Post", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将设备从预付费转换为后付费
    ///
    /// 将设备的预付费模式修改为后付费计费模式，支持批量转换。（前提是客户要加入黑石物理机后付费计费的白名单，申请黑石物理机后付费可以联系腾讯云客服）
    @inlinable @discardableResult
    public func modifyPayModePre2Post(_ input: ModifyPayModePre2PostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPayModePre2PostResponse {
        try await self.client.execute(action: "ModifyPayModePre2Post", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 将设备从预付费转换为后付费
    ///
    /// 将设备的预付费模式修改为后付费计费模式，支持批量转换。（前提是客户要加入黑石物理机后付费计费的白名单，申请黑石物理机后付费可以联系腾讯云客服）
    @inlinable @discardableResult
    public func modifyPayModePre2Post(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPayModePre2PostResponse> {
        self.modifyPayModePre2Post(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 将设备从预付费转换为后付费
    ///
    /// 将设备的预付费模式修改为后付费计费模式，支持批量转换。（前提是客户要加入黑石物理机后付费计费的白名单，申请黑石物理机后付费可以联系腾讯云客服）
    @inlinable @discardableResult
    public func modifyPayModePre2Post(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPayModePre2PostResponse {
        try await self.modifyPayModePre2Post(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
