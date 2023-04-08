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

extension Apm {
    /// ModifyApmInstance请求参数结构体
    public struct ModifyApmInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 实例名
        public let name: String

        /// 标签列表
        public let tags: [ApmTag]?

        /// 实例详情
        public let description: String?

        /// Trace数据保存时长
        public let traceDuration: Int64?

        /// 是否开启计费
        public let openBilling: Bool?

        /// 实例上报额度
        public let spanDailyCounters: UInt64?

        /// 错误率阈值
        public let errRateThreshold: Int64?

        /// 采样率
        public let sampleRate: Int64?

        /// 是否开启错误采样 0 关 1 开
        public let errorSample: Int64?

        /// 慢请求阈值
        public let slowRequestSavedThreshold: Int64?

        /// 是否开启日志功能 0 关 1 开
        public let isRelatedLog: Int64?

        /// 日志地域
        public let logRegion: String?

        /// CLS日志主题ID | ES 索引名
        public let logTopicID: String?

        /// CLS日志集 | ES集群ID
        public let logSet: String?

        /// CLS | ES
        public let logSource: String?

        public init(instanceId: String, name: String, tags: [ApmTag]? = nil, description: String? = nil, traceDuration: Int64? = nil, openBilling: Bool? = nil, spanDailyCounters: UInt64? = nil, errRateThreshold: Int64? = nil, sampleRate: Int64? = nil, errorSample: Int64? = nil, slowRequestSavedThreshold: Int64? = nil, isRelatedLog: Int64? = nil, logRegion: String? = nil, logTopicID: String? = nil, logSet: String? = nil, logSource: String? = nil) {
            self.instanceId = instanceId
            self.name = name
            self.tags = tags
            self.description = description
            self.traceDuration = traceDuration
            self.openBilling = openBilling
            self.spanDailyCounters = spanDailyCounters
            self.errRateThreshold = errRateThreshold
            self.sampleRate = sampleRate
            self.errorSample = errorSample
            self.slowRequestSavedThreshold = slowRequestSavedThreshold
            self.isRelatedLog = isRelatedLog
            self.logRegion = logRegion
            self.logTopicID = logTopicID
            self.logSet = logSet
            self.logSource = logSource
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case name = "Name"
            case tags = "Tags"
            case description = "Description"
            case traceDuration = "TraceDuration"
            case openBilling = "OpenBilling"
            case spanDailyCounters = "SpanDailyCounters"
            case errRateThreshold = "ErrRateThreshold"
            case sampleRate = "SampleRate"
            case errorSample = "ErrorSample"
            case slowRequestSavedThreshold = "SlowRequestSavedThreshold"
            case isRelatedLog = "IsRelatedLog"
            case logRegion = "LogRegion"
            case logTopicID = "LogTopicID"
            case logSet = "LogSet"
            case logSource = "LogSource"
        }
    }

    /// ModifyApmInstance返回参数结构体
    public struct ModifyApmInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改Apm实例
    ///
    /// 修改Apm实例接口
    @inlinable @discardableResult
    public func modifyApmInstance(_ input: ModifyApmInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApmInstanceResponse> {
        self.client.execute(action: "ModifyApmInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改Apm实例
    ///
    /// 修改Apm实例接口
    @inlinable @discardableResult
    public func modifyApmInstance(_ input: ModifyApmInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApmInstanceResponse {
        try await self.client.execute(action: "ModifyApmInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改Apm实例
    ///
    /// 修改Apm实例接口
    @inlinable @discardableResult
    public func modifyApmInstance(instanceId: String, name: String, tags: [ApmTag]? = nil, description: String? = nil, traceDuration: Int64? = nil, openBilling: Bool? = nil, spanDailyCounters: UInt64? = nil, errRateThreshold: Int64? = nil, sampleRate: Int64? = nil, errorSample: Int64? = nil, slowRequestSavedThreshold: Int64? = nil, isRelatedLog: Int64? = nil, logRegion: String? = nil, logTopicID: String? = nil, logSet: String? = nil, logSource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApmInstanceResponse> {
        self.modifyApmInstance(.init(instanceId: instanceId, name: name, tags: tags, description: description, traceDuration: traceDuration, openBilling: openBilling, spanDailyCounters: spanDailyCounters, errRateThreshold: errRateThreshold, sampleRate: sampleRate, errorSample: errorSample, slowRequestSavedThreshold: slowRequestSavedThreshold, isRelatedLog: isRelatedLog, logRegion: logRegion, logTopicID: logTopicID, logSet: logSet, logSource: logSource), region: region, logger: logger, on: eventLoop)
    }

    /// 修改Apm实例
    ///
    /// 修改Apm实例接口
    @inlinable @discardableResult
    public func modifyApmInstance(instanceId: String, name: String, tags: [ApmTag]? = nil, description: String? = nil, traceDuration: Int64? = nil, openBilling: Bool? = nil, spanDailyCounters: UInt64? = nil, errRateThreshold: Int64? = nil, sampleRate: Int64? = nil, errorSample: Int64? = nil, slowRequestSavedThreshold: Int64? = nil, isRelatedLog: Int64? = nil, logRegion: String? = nil, logTopicID: String? = nil, logSet: String? = nil, logSource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApmInstanceResponse {
        try await self.modifyApmInstance(.init(instanceId: instanceId, name: name, tags: tags, description: description, traceDuration: traceDuration, openBilling: openBilling, spanDailyCounters: spanDailyCounters, errRateThreshold: errRateThreshold, sampleRate: sampleRate, errorSample: errorSample, slowRequestSavedThreshold: slowRequestSavedThreshold, isRelatedLog: isRelatedLog, logRegion: logRegion, logTopicID: logTopicID, logSet: logSet, logSource: logSource), region: region, logger: logger, on: eventLoop)
    }
}
