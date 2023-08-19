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

extension Tcb {
    /// DescribeCurveData请求参数结构体
    public struct DescribeCurveDataRequest: TCRequest {
        /// 环境ID
        public let envId: String

        /// - 指标名:
        /// - StorageRead: 存储读请求次数
        /// - StorageWrite: 存储写请求次数
        /// - StorageCdnOriginFlux: CDN回源流量, 单位字节
        /// - CDNFlux: CDN回源流量, 单位字节
        /// - FunctionInvocation: 云函数调用次数
        /// - FunctionGBs: 云函数资源使用量, 单位Mb*Ms
        /// - FunctionFlux: 云函数流量, 单位千字节(KB)
        /// - FunctionError: 云函数调用错误次数
        /// - FunctionDuration: 云函数运行时间, 单位毫秒
        /// - DbRead: 数据库读请求数
        /// - DbWrite: 数据库写请求数
        /// - DbCostTime10ms: 数据库耗时在10ms~50ms请求数
        /// - DbCostTime50ms: 数据库耗时在50ms~100ms请求数
        /// - DbCostTime100ms: 数据库耗时在100ms以上请求数
        /// - TkeCpuRatio: 容器CPU占用率
        /// - TkeMemRatio: 容器内存占用率
        /// - TkeCpuUsed: 容器CPU使用量
        /// - TkeMemUsed: 容器内存使用量
        /// - TkeInvokeNum: 调用量
        /// - FunctionConcurrentExecutions: 云函数并发执行个数
        /// - FunctionIdleProvisioned: 云函数预置并发闲置量
        /// - FunctionConcurrencyMemoryMB: 云函数并发执行内存量
        /// - FunctionThrottle: 云函数受限次数
        /// - FunctionProvisionedConcurrency: 云函数预置并发
        public let metricName: String

        /// 开始时间，如2018-08-24 10:50:00, 开始时间需要早于结束时间至少五分钟(原因是因为目前统计粒度最小是5分钟).
        public let startTime: String

        /// 结束时间，如2018-08-24 10:50:00, 结束时间需要晚于开始时间至少五分钟(原因是因为目前统计粒度最小是5分钟)..
        public let endTime: String

        /// 资源ID, 目前仅对云函数、容器托管相关的指标有意义。云函数(FunctionInvocation, FunctionGBs, FunctionFlux, FunctionError, FunctionDuration)、容器托管（服务名称）, 如果想查询某个云函数的指标则在ResourceId中传入函数名; 如果只想查询整个namespace的指标, 则留空或不传.如果想查询数据库某个集合相关信息，传入集合名称
        public let resourceID: String?

        public init(envId: String, metricName: String, startTime: String, endTime: String, resourceID: String? = nil) {
            self.envId = envId
            self.metricName = metricName
            self.startTime = startTime
            self.endTime = endTime
            self.resourceID = resourceID
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case metricName = "MetricName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case resourceID = "ResourceID"
        }
    }

    /// DescribeCurveData返回参数结构体
    public struct DescribeCurveDataResponse: TCResponse {
        /// 开始时间, 会根据数据的统计周期进行取整.
        public let startTime: String

        /// 结束时间, 会根据数据的统计周期进行取整.
        public let endTime: String

        /// 指标名.
        public let metricName: String

        /// 统计周期(单位秒), 当时间区间为1天内, 统计周期为5分钟; 当时间区间选择为1天以上, 15天以下, 统计周期为1小时; 当时间区间选择为15天以上, 180天以下, 统计周期为1天.
        public let period: UInt64

        /// 有效的监控数据, 每个有效监控数据的上报时间可以从时间数组中的对应位置上获取到.
        public let values: [Int64]

        /// 时间数据, 标识监控数据Values中的点是哪个时间段上报的.
        public let time: [Int64]

        /// 有效的监控数据, 每个有效监控数据的上报时间可以从时间数组中的对应位置上获取到.
        public let newValues: [Float]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case period = "Period"
            case values = "Values"
            case time = "Time"
            case newValues = "NewValues"
            case requestId = "RequestId"
        }
    }

    /// 查询环境监控曲线
    ///
    /// 根据用户传入的指标, 拉取一段时间内的监控数据。
    @inlinable
    public func describeCurveData(_ input: DescribeCurveDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurveDataResponse> {
        self.client.execute(action: "DescribeCurveData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境监控曲线
    ///
    /// 根据用户传入的指标, 拉取一段时间内的监控数据。
    @inlinable
    public func describeCurveData(_ input: DescribeCurveDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurveDataResponse {
        try await self.client.execute(action: "DescribeCurveData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询环境监控曲线
    ///
    /// 根据用户传入的指标, 拉取一段时间内的监控数据。
    @inlinable
    public func describeCurveData(envId: String, metricName: String, startTime: String, endTime: String, resourceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurveDataResponse> {
        self.describeCurveData(.init(envId: envId, metricName: metricName, startTime: startTime, endTime: endTime, resourceID: resourceID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询环境监控曲线
    ///
    /// 根据用户传入的指标, 拉取一段时间内的监控数据。
    @inlinable
    public func describeCurveData(envId: String, metricName: String, startTime: String, endTime: String, resourceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurveDataResponse {
        try await self.describeCurveData(.init(envId: envId, metricName: metricName, startTime: startTime, endTime: endTime, resourceID: resourceID), region: region, logger: logger, on: eventLoop)
    }
}
