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

extension Apcas {
    /// PredictRating请求参数结构体
    public struct PredictRatingRequest: TCRequest {
        /// ID标志的类型，0:IMEI 7:IDFA 8:MD5(imei) 100: 手机号明文 101: 手机号md5加密
        public let type: Int64

        /// 请求唯一标志ID
        public let id: String

        public init(type: Int64, id: String) {
            self.type = type
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case id = "Id"
        }
    }

    /// PredictRating返回参数结构体
    public struct PredictRatingResponse: TCResponse {
        /// 意向评级
        public let ratingData: RatingData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ratingData = "RatingData"
            case requestId = "RequestId"
        }
    }

    /// 购车意向评级接口
    ///
    /// 根据传入的设备号（IMEI、IDFA、手机号、手机号MD5），返回意向评级结果
    @inlinable
    public func predictRating(_ input: PredictRatingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PredictRatingResponse> {
        self.client.execute(action: "PredictRating", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购车意向评级接口
    ///
    /// 根据传入的设备号（IMEI、IDFA、手机号、手机号MD5），返回意向评级结果
    @inlinable
    public func predictRating(_ input: PredictRatingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PredictRatingResponse {
        try await self.client.execute(action: "PredictRating", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购车意向评级接口
    ///
    /// 根据传入的设备号（IMEI、IDFA、手机号、手机号MD5），返回意向评级结果
    @inlinable
    public func predictRating(type: Int64, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PredictRatingResponse> {
        self.predictRating(.init(type: type, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 购车意向评级接口
    ///
    /// 根据传入的设备号（IMEI、IDFA、手机号、手机号MD5），返回意向评级结果
    @inlinable
    public func predictRating(type: Int64, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PredictRatingResponse {
        try await self.predictRating(.init(type: type, id: id), region: region, logger: logger, on: eventLoop)
    }
}
