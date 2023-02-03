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
    /// ModifyLoRaFrequency请求参数结构体
    public struct ModifyLoRaFrequencyRequest: TCRequestModel {
        /// 频点唯一ID
        public let freqId: String?

        /// 频点名称
        public let freqName: String?

        /// 频点描述
        public let description: String?

        /// 数据上行信道
        public let channelsDataUp: [UInt64]?

        /// 数据下行信道RX1
        public let channelsDataRX1: [UInt64]?

        /// 数据下行信道RX2
        public let channelsDataRX2: [UInt64]?

        /// 入网上行信道
        public let channelsJoinUp: [UInt64]?

        /// 入网下行信道RX1
        public let channelsJoinRX1: [UInt64]?

        /// 入网下行信道RX2
        public let channelsJoinRX2: [UInt64]?

        public init(freqId: String? = nil, freqName: String? = nil, description: String? = nil, channelsDataUp: [UInt64]? = nil, channelsDataRX1: [UInt64]? = nil, channelsDataRX2: [UInt64]? = nil, channelsJoinUp: [UInt64]? = nil, channelsJoinRX1: [UInt64]? = nil, channelsJoinRX2: [UInt64]? = nil) {
            self.freqId = freqId
            self.freqName = freqName
            self.description = description
            self.channelsDataUp = channelsDataUp
            self.channelsDataRX1 = channelsDataRX1
            self.channelsDataRX2 = channelsDataRX2
            self.channelsJoinUp = channelsJoinUp
            self.channelsJoinRX1 = channelsJoinRX1
            self.channelsJoinRX2 = channelsJoinRX2
        }

        enum CodingKeys: String, CodingKey {
            case freqId = "FreqId"
            case freqName = "FreqName"
            case description = "Description"
            case channelsDataUp = "ChannelsDataUp"
            case channelsDataRX1 = "ChannelsDataRX1"
            case channelsDataRX2 = "ChannelsDataRX2"
            case channelsJoinUp = "ChannelsJoinUp"
            case channelsJoinRX1 = "ChannelsJoinRX1"
            case channelsJoinRX2 = "ChannelsJoinRX2"
        }
    }

    /// ModifyLoRaFrequency返回参数结构体
    public struct ModifyLoRaFrequencyResponse: TCResponseModel {
        /// 频点信息
        public let data: LoRaFrequencyEntry

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改LoRa自定义频点
    @inlinable
    public func modifyLoRaFrequency(_ input: ModifyLoRaFrequencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoRaFrequencyResponse> {
        self.client.execute(action: "ModifyLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改LoRa自定义频点
    @inlinable
    public func modifyLoRaFrequency(_ input: ModifyLoRaFrequencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoRaFrequencyResponse {
        try await self.client.execute(action: "ModifyLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改LoRa自定义频点
    @inlinable
    public func modifyLoRaFrequency(freqId: String? = nil, freqName: String? = nil, description: String? = nil, channelsDataUp: [UInt64]? = nil, channelsDataRX1: [UInt64]? = nil, channelsDataRX2: [UInt64]? = nil, channelsJoinUp: [UInt64]? = nil, channelsJoinRX1: [UInt64]? = nil, channelsJoinRX2: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoRaFrequencyResponse> {
        let input = ModifyLoRaFrequencyRequest(freqId: freqId, freqName: freqName, description: description, channelsDataUp: channelsDataUp, channelsDataRX1: channelsDataRX1, channelsDataRX2: channelsDataRX2, channelsJoinUp: channelsJoinUp, channelsJoinRX1: channelsJoinRX1, channelsJoinRX2: channelsJoinRX2)
        return self.client.execute(action: "ModifyLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改LoRa自定义频点
    @inlinable
    public func modifyLoRaFrequency(freqId: String? = nil, freqName: String? = nil, description: String? = nil, channelsDataUp: [UInt64]? = nil, channelsDataRX1: [UInt64]? = nil, channelsDataRX2: [UInt64]? = nil, channelsJoinUp: [UInt64]? = nil, channelsJoinRX1: [UInt64]? = nil, channelsJoinRX2: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoRaFrequencyResponse {
        let input = ModifyLoRaFrequencyRequest(freqId: freqId, freqName: freqName, description: description, channelsDataUp: channelsDataUp, channelsDataRX1: channelsDataRX1, channelsDataRX2: channelsDataRX2, channelsJoinUp: channelsJoinUp, channelsJoinRX1: channelsJoinRX1, channelsJoinRX2: channelsJoinRX2)
        return try await self.client.execute(action: "ModifyLoRaFrequency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
