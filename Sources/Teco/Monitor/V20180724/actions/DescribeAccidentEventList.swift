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
    /// DescribeAccidentEventList请求参数结构体
    public struct DescribeAccidentEventListRequest: TCRequestModel {
        /// 接口模块名，当前接口取值monitor
        public let module: String

        /// 起始时间，默认一天前的时间戳
        public let startTime: Int64?

        /// 结束时间，默认当前时间戳
        public let endTime: Int64?

        /// 分页参数，每页返回的数量，取值1~100，默认20
        public let limit: Int64?

        /// 分页参数，页偏移量，从0开始计数，默认0
        public let offset: Int64?

        /// 根据UpdateTime排序的规则，取值asc或desc
        public let updateTimeOrder: String?

        /// 根据OccurTime排序的规则，取值asc或desc（优先根据UpdateTimeOrder排序）
        public let occurTimeOrder: String?

        /// 根据事件类型过滤，1表示服务问题，2表示其他订阅
        public let accidentType: [Int64]?

        /// 根据事件过滤，1表示云服务器存储问题，2表示云服务器网络连接问题，3表示云服务器运行异常，202表示运营商网络抖动
        public let accidentEvent: [Int64]?

        /// 根据事件状态过滤，0表示已恢复，1表示未恢复
        public let accidentStatus: [Int64]?

        /// 根据事件地域过滤，gz表示广州，sh表示上海等
        public let accidentRegion: [String]?

        /// 根据影响资源过滤，比如ins-19a06bka
        public let affectResource: String?

        public init(module: String, startTime: Int64? = nil, endTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, updateTimeOrder: String? = nil, occurTimeOrder: String? = nil, accidentType: [Int64]? = nil, accidentEvent: [Int64]? = nil, accidentStatus: [Int64]? = nil, accidentRegion: [String]? = nil, affectResource: String? = nil) {
            self.module = module
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.updateTimeOrder = updateTimeOrder
            self.occurTimeOrder = occurTimeOrder
            self.accidentType = accidentType
            self.accidentEvent = accidentEvent
            self.accidentStatus = accidentStatus
            self.accidentRegion = accidentRegion
            self.affectResource = affectResource
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case updateTimeOrder = "UpdateTimeOrder"
            case occurTimeOrder = "OccurTimeOrder"
            case accidentType = "AccidentType"
            case accidentEvent = "AccidentEvent"
            case accidentStatus = "AccidentStatus"
            case accidentRegion = "AccidentRegion"
            case affectResource = "AffectResource"
        }
    }

    /// DescribeAccidentEventList返回参数结构体
    public struct DescribeAccidentEventListResponse: TCResponseModel {
        /// 平台事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alarms: [DescribeAccidentEventListAlarms]?

        /// 平台事件的总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarms = "Alarms"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取平台事件列表
    @inlinable
    public func describeAccidentEventList(_ input: DescribeAccidentEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccidentEventListResponse> {
        self.client.execute(action: "DescribeAccidentEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取平台事件列表
    @inlinable
    public func describeAccidentEventList(_ input: DescribeAccidentEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccidentEventListResponse {
        try await self.client.execute(action: "DescribeAccidentEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取平台事件列表
    @inlinable
    public func describeAccidentEventList(module: String, startTime: Int64? = nil, endTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, updateTimeOrder: String? = nil, occurTimeOrder: String? = nil, accidentType: [Int64]? = nil, accidentEvent: [Int64]? = nil, accidentStatus: [Int64]? = nil, accidentRegion: [String]? = nil, affectResource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccidentEventListResponse> {
        let input = DescribeAccidentEventListRequest(module: module, startTime: startTime, endTime: endTime, limit: limit, offset: offset, updateTimeOrder: updateTimeOrder, occurTimeOrder: occurTimeOrder, accidentType: accidentType, accidentEvent: accidentEvent, accidentStatus: accidentStatus, accidentRegion: accidentRegion, affectResource: affectResource)
        return self.client.execute(action: "DescribeAccidentEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取平台事件列表
    @inlinable
    public func describeAccidentEventList(module: String, startTime: Int64? = nil, endTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, updateTimeOrder: String? = nil, occurTimeOrder: String? = nil, accidentType: [Int64]? = nil, accidentEvent: [Int64]? = nil, accidentStatus: [Int64]? = nil, accidentRegion: [String]? = nil, affectResource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccidentEventListResponse {
        let input = DescribeAccidentEventListRequest(module: module, startTime: startTime, endTime: endTime, limit: limit, offset: offset, updateTimeOrder: updateTimeOrder, occurTimeOrder: occurTimeOrder, accidentType: accidentType, accidentEvent: accidentEvent, accidentStatus: accidentStatus, accidentRegion: accidentRegion, affectResource: affectResource)
        return try await self.client.execute(action: "DescribeAccidentEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
