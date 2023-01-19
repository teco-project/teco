//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// DescribeBanMode请求参数结构体
    public struct DescribeBanModeRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBanMode返回参数结构体
    public struct DescribeBanModeResponse: TCResponseModel {
        /// 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        public let mode: String

        /// 标准阻断模式的配置
        public let standardModeConfig: StandardModeConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case standardModeConfig = "StandardModeConfig"
            case requestId = "RequestId"
        }
    }

    /// 获取爆破阻断模式
    @inlinable
    public func describeBanMode(_ input: DescribeBanModeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBanModeResponse> {
        self.client.execute(action: "DescribeBanMode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取爆破阻断模式
    @inlinable
    public func describeBanMode(_ input: DescribeBanModeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBanModeResponse {
        try await self.client.execute(action: "DescribeBanMode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取爆破阻断模式
    @inlinable
    public func describeBanMode(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBanModeResponse> {
        self.describeBanMode(DescribeBanModeRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取爆破阻断模式
    @inlinable
    public func describeBanMode(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBanModeResponse {
        try await self.describeBanMode(DescribeBanModeRequest(), region: region, logger: logger, on: eventLoop)
    }
}
