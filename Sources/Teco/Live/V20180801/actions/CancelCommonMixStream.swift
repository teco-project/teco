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

extension Live {
    /// CancelCommonMixStream请求参数结构体
    public struct CancelCommonMixStreamRequest: TCRequest {
        /// 混流会话（申请混流开始到取消混流结束）标识 ID。
        /// 该值与CreateCommonMixStream中的MixStreamSessionId保持一致。
        public let mixStreamSessionId: String

        public init(mixStreamSessionId: String) {
            self.mixStreamSessionId = mixStreamSessionId
        }

        enum CodingKeys: String, CodingKey {
            case mixStreamSessionId = "MixStreamSessionId"
        }
    }

    /// CancelCommonMixStream返回参数结构体
    public struct CancelCommonMixStreamResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消通用混流
    ///
    /// 该接口用来取消混流。用法与 mix_streamv2.cancel_mix_stream 基本一致。
    @inlinable @discardableResult
    public func cancelCommonMixStream(_ input: CancelCommonMixStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelCommonMixStreamResponse> {
        self.client.execute(action: "CancelCommonMixStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消通用混流
    ///
    /// 该接口用来取消混流。用法与 mix_streamv2.cancel_mix_stream 基本一致。
    @inlinable @discardableResult
    public func cancelCommonMixStream(_ input: CancelCommonMixStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelCommonMixStreamResponse {
        try await self.client.execute(action: "CancelCommonMixStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消通用混流
    ///
    /// 该接口用来取消混流。用法与 mix_streamv2.cancel_mix_stream 基本一致。
    @inlinable @discardableResult
    public func cancelCommonMixStream(mixStreamSessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelCommonMixStreamResponse> {
        self.cancelCommonMixStream(.init(mixStreamSessionId: mixStreamSessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消通用混流
    ///
    /// 该接口用来取消混流。用法与 mix_streamv2.cancel_mix_stream 基本一致。
    @inlinable @discardableResult
    public func cancelCommonMixStream(mixStreamSessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelCommonMixStreamResponse {
        try await self.cancelCommonMixStream(.init(mixStreamSessionId: mixStreamSessionId), region: region, logger: logger, on: eventLoop)
    }
}
