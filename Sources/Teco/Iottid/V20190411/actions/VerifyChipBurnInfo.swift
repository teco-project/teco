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

extension Iottid {
    /// VerifyChipBurnInfo请求参数结构体
    public struct VerifyChipBurnInfoRequest: TCRequestModel {
        /// 验证数据
        public let data: String

        public init(data: String) {
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }

    /// VerifyChipBurnInfo返回参数结构体
    public struct VerifyChipBurnInfoResponse: TCResponseModel {
        /// 验证结果
        public let pass: Bool

        /// 已验证次数
        public let verifiedTimes: UInt64

        /// 剩余验证次数
        public let leftTimes: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pass = "Pass"
            case verifiedTimes = "VerifiedTimes"
            case leftTimes = "LeftTimes"
            case requestId = "RequestId"
        }
    }

    /// 验证芯片烧录TID信息
    ///
    /// 下载控制台验证芯片烧录信息，保证TID与中心信息一致
    @inlinable
    public func verifyChipBurnInfo(_ input: VerifyChipBurnInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyChipBurnInfoResponse> {
        self.client.execute(action: "VerifyChipBurnInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证芯片烧录TID信息
    ///
    /// 下载控制台验证芯片烧录信息，保证TID与中心信息一致
    @inlinable
    public func verifyChipBurnInfo(_ input: VerifyChipBurnInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyChipBurnInfoResponse {
        try await self.client.execute(action: "VerifyChipBurnInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证芯片烧录TID信息
    ///
    /// 下载控制台验证芯片烧录信息，保证TID与中心信息一致
    @inlinable
    public func verifyChipBurnInfo(data: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyChipBurnInfoResponse> {
        self.verifyChipBurnInfo(.init(data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 验证芯片烧录TID信息
    ///
    /// 下载控制台验证芯片烧录信息，保证TID与中心信息一致
    @inlinable
    public func verifyChipBurnInfo(data: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyChipBurnInfoResponse {
        try await self.verifyChipBurnInfo(.init(data: data), region: region, logger: logger, on: eventLoop)
    }
}
