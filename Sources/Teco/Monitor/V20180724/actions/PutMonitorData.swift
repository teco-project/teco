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

extension Monitor {
    /// PutMonitorData请求参数结构体
    public struct PutMonitorDataRequest: TCRequestModel {
        /// 一组指标和数据
        public let metrics: [MetricDatum]

        /// 上报时自行指定的 IP
        public let announceIp: String?

        /// 上报时自行指定的时间戳
        public let announceTimestamp: UInt64?

        /// 上报时自行指定的 IP 或 产品实例ID
        public let announceInstance: String?

        public init(metrics: [MetricDatum], announceIp: String? = nil, announceTimestamp: UInt64? = nil, announceInstance: String? = nil) {
            self.metrics = metrics
            self.announceIp = announceIp
            self.announceTimestamp = announceTimestamp
            self.announceInstance = announceInstance
        }

        enum CodingKeys: String, CodingKey {
            case metrics = "Metrics"
            case announceIp = "AnnounceIp"
            case announceTimestamp = "AnnounceTimestamp"
            case announceInstance = "AnnounceInstance"
        }
    }

    /// PutMonitorData返回参数结构体
    public struct PutMonitorDataResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 自定义监控上报数据
    ///
    /// 默认接口请求频率限制：50次/秒。
    /// 默认单租户指标上限：100个。
    /// 单次上报最多 30 个指标/值对，请求返回错误时，请求中所有的指标/值均不会被保存。
    /// 上报的时间戳为期望保存的时间戳，建议构造整数分钟时刻的时间戳。
    /// 时间戳时间范围必须为当前时间到 300 秒前之间。
    /// 同一 IP 指标对的数据需按分钟先后顺序上报。
    @inlinable @discardableResult
    public func putMonitorData(_ input: PutMonitorDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutMonitorDataResponse> {
        self.client.execute(action: "PutMonitorData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 自定义监控上报数据
    ///
    /// 默认接口请求频率限制：50次/秒。
    /// 默认单租户指标上限：100个。
    /// 单次上报最多 30 个指标/值对，请求返回错误时，请求中所有的指标/值均不会被保存。
    /// 上报的时间戳为期望保存的时间戳，建议构造整数分钟时刻的时间戳。
    /// 时间戳时间范围必须为当前时间到 300 秒前之间。
    /// 同一 IP 指标对的数据需按分钟先后顺序上报。
    @inlinable @discardableResult
    public func putMonitorData(_ input: PutMonitorDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMonitorDataResponse {
        try await self.client.execute(action: "PutMonitorData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 自定义监控上报数据
    ///
    /// 默认接口请求频率限制：50次/秒。
    /// 默认单租户指标上限：100个。
    /// 单次上报最多 30 个指标/值对，请求返回错误时，请求中所有的指标/值均不会被保存。
    /// 上报的时间戳为期望保存的时间戳，建议构造整数分钟时刻的时间戳。
    /// 时间戳时间范围必须为当前时间到 300 秒前之间。
    /// 同一 IP 指标对的数据需按分钟先后顺序上报。
    @inlinable @discardableResult
    public func putMonitorData(metrics: [MetricDatum], announceIp: String? = nil, announceTimestamp: UInt64? = nil, announceInstance: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutMonitorDataResponse> {
        self.putMonitorData(PutMonitorDataRequest(metrics: metrics, announceIp: announceIp, announceTimestamp: announceTimestamp, announceInstance: announceInstance), region: region, logger: logger, on: eventLoop)
    }

    /// 自定义监控上报数据
    ///
    /// 默认接口请求频率限制：50次/秒。
    /// 默认单租户指标上限：100个。
    /// 单次上报最多 30 个指标/值对，请求返回错误时，请求中所有的指标/值均不会被保存。
    /// 上报的时间戳为期望保存的时间戳，建议构造整数分钟时刻的时间戳。
    /// 时间戳时间范围必须为当前时间到 300 秒前之间。
    /// 同一 IP 指标对的数据需按分钟先后顺序上报。
    @inlinable @discardableResult
    public func putMonitorData(metrics: [MetricDatum], announceIp: String? = nil, announceTimestamp: UInt64? = nil, announceInstance: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMonitorDataResponse {
        try await self.putMonitorData(PutMonitorDataRequest(metrics: metrics, announceIp: announceIp, announceTimestamp: announceTimestamp, announceInstance: announceInstance), region: region, logger: logger, on: eventLoop)
    }
}
