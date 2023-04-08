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

import TecoCore

extension Vod {
    /// ConfirmEvents请求参数结构体
    public struct ConfirmEventsRequest: TCRequestModel {
        /// 事件句柄，即 [拉取事件通知](/document/product/266/33433) 接口输出参数中的 EventSet. EventHandle 字段。
        /// 数组长度限制：16。
        public let eventHandles: [String]

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(eventHandles: [String], extInfo: String? = nil, subAppId: UInt64? = nil) {
            self.eventHandles = eventHandles
            self.extInfo = extInfo
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case eventHandles = "EventHandles"
            case extInfo = "ExtInfo"
            case subAppId = "SubAppId"
        }
    }

    /// ConfirmEvents返回参数结构体
    public struct ConfirmEventsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 确认事件通知
    ///
    /// * 开发者调用拉取事件通知，获取到事件后，必须调用该接口来确认消息已经收到；
    /// * 开发者获取到事件句柄后，等待确认的有效时间为 30 秒，超出 30 秒会报参数错误（4000）；
    /// * 更多参考事件通知的[可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83)。
    @inlinable @discardableResult
    public func confirmEvents(_ input: ConfirmEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfirmEventsResponse> {
        self.client.execute(action: "ConfirmEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 确认事件通知
    ///
    /// * 开发者调用拉取事件通知，获取到事件后，必须调用该接口来确认消息已经收到；
    /// * 开发者获取到事件句柄后，等待确认的有效时间为 30 秒，超出 30 秒会报参数错误（4000）；
    /// * 更多参考事件通知的[可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83)。
    @inlinable @discardableResult
    public func confirmEvents(_ input: ConfirmEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfirmEventsResponse {
        try await self.client.execute(action: "ConfirmEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 确认事件通知
    ///
    /// * 开发者调用拉取事件通知，获取到事件后，必须调用该接口来确认消息已经收到；
    /// * 开发者获取到事件句柄后，等待确认的有效时间为 30 秒，超出 30 秒会报参数错误（4000）；
    /// * 更多参考事件通知的[可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83)。
    @inlinable @discardableResult
    public func confirmEvents(eventHandles: [String], extInfo: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfirmEventsResponse> {
        self.confirmEvents(.init(eventHandles: eventHandles, extInfo: extInfo, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 确认事件通知
    ///
    /// * 开发者调用拉取事件通知，获取到事件后，必须调用该接口来确认消息已经收到；
    /// * 开发者获取到事件句柄后，等待确认的有效时间为 30 秒，超出 30 秒会报参数错误（4000）；
    /// * 更多参考事件通知的[可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83)。
    @inlinable @discardableResult
    public func confirmEvents(eventHandles: [String], extInfo: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfirmEventsResponse {
        try await self.confirmEvents(.init(eventHandles: eventHandles, extInfo: extInfo, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
