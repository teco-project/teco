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

extension Vrs {
    /// GetTrainingText请求参数结构体
    public struct GetTrainingTextRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetTrainingText返回参数结构体
    public struct GetTrainingTextResponse: TCResponseModel {
        /// 文本列表
        public let data: TrainingTexts

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取声音复刻训练文本
    ///
    /// 本接口用于获取声音复刻训练文本信息。
    ///  请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func getTrainingText(_ input: GetTrainingTextRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTrainingTextResponse> {
        self.client.execute(action: "GetTrainingText", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取声音复刻训练文本
    ///
    /// 本接口用于获取声音复刻训练文本信息。
    ///  请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func getTrainingText(_ input: GetTrainingTextRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTrainingTextResponse {
        try await self.client.execute(action: "GetTrainingText", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取声音复刻训练文本
    ///
    /// 本接口用于获取声音复刻训练文本信息。
    ///  请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func getTrainingText(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTrainingTextResponse> {
        self.getTrainingText(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取声音复刻训练文本
    ///
    /// 本接口用于获取声音复刻训练文本信息。
    ///  请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func getTrainingText(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTrainingTextResponse {
        try await self.getTrainingText(.init(), region: region, logger: logger, on: eventLoop)
    }
}
