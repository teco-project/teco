//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotexplorer {
    /// DescribeLoRaFrequency请求参数结构体
    public struct DescribeLoRaFrequencyRequest: TCRequestModel {
        /// 频点唯一ID
        public let freqId: String?

        public init(freqId: String? = nil) {
            self.freqId = freqId
        }

        enum CodingKeys: String, CodingKey {
            case freqId = "FreqId"
        }
    }

    /// DescribeLoRaFrequency返回参数结构体
    public struct DescribeLoRaFrequencyResponse: TCResponseModel {
        /// 返回详情项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: LoRaFrequencyEntry?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取LoRa自定义频点详情
    ///
    /// 提供查询LoRa自定义频点详情的能力
    @inlinable
    public func describeLoRaFrequency(_ input: DescribeLoRaFrequencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLoRaFrequencyResponse > {
        self.client.execute(action: "DescribeLoRaFrequency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取LoRa自定义频点详情
    ///
    /// 提供查询LoRa自定义频点详情的能力
    @inlinable
    public func describeLoRaFrequency(_ input: DescribeLoRaFrequencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoRaFrequencyResponse {
        try await self.client.execute(action: "DescribeLoRaFrequency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取LoRa自定义频点详情
    ///
    /// 提供查询LoRa自定义频点详情的能力
    @inlinable
    public func describeLoRaFrequency(freqId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLoRaFrequencyResponse > {
        self.describeLoRaFrequency(DescribeLoRaFrequencyRequest(freqId: freqId), logger: logger, on: eventLoop)
    }

    /// 获取LoRa自定义频点详情
    ///
    /// 提供查询LoRa自定义频点详情的能力
    @inlinable
    public func describeLoRaFrequency(freqId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoRaFrequencyResponse {
        try await self.describeLoRaFrequency(DescribeLoRaFrequencyRequest(freqId: freqId), logger: logger, on: eventLoop)
    }
}
