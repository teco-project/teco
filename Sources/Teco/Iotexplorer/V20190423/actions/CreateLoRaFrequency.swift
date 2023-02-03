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

extension Iotexplorer {
    /// CreateLoRaFrequency请求参数结构体
    public struct CreateLoRaFrequencyRequest: TCRequestModel {
        /// 频点配置名称
        public let freqName: String?

        /// 数据上行信道
        public let channelsDataUp: [UInt64]?

        /// 数据下行RX1信道
        public let channelsDataRX1: [UInt64]?

        /// 数据下行RX2信道
        public let channelsDataRX2: [UInt64]?

        /// 入网上行信道
        public let channelsJoinUp: [UInt64]?

        /// 入网下行RX1信道
        public let channelsJoinRX1: [UInt64]?

        /// 入网下行RX2信道
        public let channelsJoinRX2: [UInt64]?

        /// 频点配置描述
        public let description: String?

        public init(freqName: String? = nil, channelsDataUp: [UInt64]? = nil, channelsDataRX1: [UInt64]? = nil, channelsDataRX2: [UInt64]? = nil, channelsJoinUp: [UInt64]? = nil, channelsJoinRX1: [UInt64]? = nil, channelsJoinRX2: [UInt64]? = nil, description: String? = nil) {
            self.freqName = freqName
            self.channelsDataUp = channelsDataUp
            self.channelsDataRX1 = channelsDataRX1
            self.channelsDataRX2 = channelsDataRX2
            self.channelsJoinUp = channelsJoinUp
            self.channelsJoinRX1 = channelsJoinRX1
            self.channelsJoinRX2 = channelsJoinRX2
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case freqName = "FreqName"
            case channelsDataUp = "ChannelsDataUp"
            case channelsDataRX1 = "ChannelsDataRX1"
            case channelsDataRX2 = "ChannelsDataRX2"
            case channelsJoinUp = "ChannelsJoinUp"
            case channelsJoinRX1 = "ChannelsJoinRX1"
            case channelsJoinRX2 = "ChannelsJoinRX2"
            case description = "Description"
        }
    }

    /// CreateLoRaFrequency返回参数结构体
    public struct CreateLoRaFrequencyResponse: TCResponseModel {
        /// LoRa频点信息
        public let data: LoRaFrequencyEntry

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建 LoRa 自定义频点
    @inlinable
    public func createLoRaFrequency(_ input: CreateLoRaFrequencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoRaFrequencyResponse> {
        self.client.execute(action: "CreateLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 LoRa 自定义频点
    @inlinable
    public func createLoRaFrequency(_ input: CreateLoRaFrequencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoRaFrequencyResponse {
        try await self.client.execute(action: "CreateLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 LoRa 自定义频点
    @inlinable
    public func createLoRaFrequency(freqName: String? = nil, channelsDataUp: [UInt64]? = nil, channelsDataRX1: [UInt64]? = nil, channelsDataRX2: [UInt64]? = nil, channelsJoinUp: [UInt64]? = nil, channelsJoinRX1: [UInt64]? = nil, channelsJoinRX2: [UInt64]? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoRaFrequencyResponse> {
        let input = CreateLoRaFrequencyRequest(freqName: freqName, channelsDataUp: channelsDataUp, channelsDataRX1: channelsDataRX1, channelsDataRX2: channelsDataRX2, channelsJoinUp: channelsJoinUp, channelsJoinRX1: channelsJoinRX1, channelsJoinRX2: channelsJoinRX2, description: description)
        return self.client.execute(action: "CreateLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 LoRa 自定义频点
    @inlinable
    public func createLoRaFrequency(freqName: String? = nil, channelsDataUp: [UInt64]? = nil, channelsDataRX1: [UInt64]? = nil, channelsDataRX2: [UInt64]? = nil, channelsJoinUp: [UInt64]? = nil, channelsJoinRX1: [UInt64]? = nil, channelsJoinRX2: [UInt64]? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoRaFrequencyResponse {
        let input = CreateLoRaFrequencyRequest(freqName: freqName, channelsDataUp: channelsDataUp, channelsDataRX1: channelsDataRX1, channelsDataRX2: channelsDataRX2, channelsJoinUp: channelsJoinUp, channelsJoinRX1: channelsJoinRX1, channelsJoinRX2: channelsJoinRX2, description: description)
        return try await self.client.execute(action: "CreateLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
