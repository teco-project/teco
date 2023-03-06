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

import TecoPaginationHelpers

extension Cat {
    /// DescribeDetailedSingleProbeData请求参数结构体
    public struct DescribeDetailedSingleProbeDataRequest: TCPaginatedRequest {
        /// 开始时间戳（毫秒级）
        public let beginTime: UInt64

        /// 结束时间戳（毫秒级）
        public let endTime: UInt64

        /// 任务类型
        /// AnalyzeTaskType_Network：网络质量
        /// AnalyzeTaskType_Browse：页面性能
        /// AnalyzeTaskType_UploadDownload：文件传输（含文件上传、文件下载）
        /// AnalyzeTaskType_Transport：端口性能
        /// AnalyzeTaskType_MediaStream：音视频体验
        public let taskType: String

        /// 待排序字段
        /// 可以填写 ProbeTime 拨测时间排序
        /// 也可填写SelectedFields 中的选中字段
        public let sortField: String

        /// true表示升序
        public let ascending: Bool

        /// 选中字段
        public let selectedFields: [String]

        /// 起始取数位置
        public let offset: Int64

        /// 取数数量
        public let limit: Int64

        /// 任务ID
        public let taskID: [String]?

        /// 拨测点运营商
        ///
        /// 这里实际按拨测结果中的运营商来填写即可
        ///
        /// 电信：中国电信
        /// 移动：中国移动
        /// 联通：中国联通
        public let operators: [String]?

        /// 拨测点地区
        ///
        /// 这里实际按拨测结果中的地区来填写即可
        ///
        /// 国内一般是省级单位，如广东、广西、中国香港、新疆；直辖市则填北京、上海
        ///
        /// 境外一般是国家名，如澳大利亚、新加坡
        public let districts: [String]?

        /// 错误类型
        public let errorTypes: [String]?

        /// 城市
        /// 这里实际按拨测结果中的城市来填写即可
        ///
        /// 示例：
        ///
        /// 深圳市
        /// 武汉市
        /// 首尔
        /// 多伦多
        public let city: [String]?

        public init(beginTime: UInt64, endTime: UInt64, taskType: String, sortField: String, ascending: Bool, selectedFields: [String], offset: Int64, limit: Int64, taskID: [String]? = nil, operators: [String]? = nil, districts: [String]? = nil, errorTypes: [String]? = nil, city: [String]? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.taskType = taskType
            self.sortField = sortField
            self.ascending = ascending
            self.selectedFields = selectedFields
            self.offset = offset
            self.limit = limit
            self.taskID = taskID
            self.operators = operators
            self.districts = districts
            self.errorTypes = errorTypes
            self.city = city
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case taskType = "TaskType"
            case sortField = "SortField"
            case ascending = "Ascending"
            case selectedFields = "SelectedFields"
            case offset = "Offset"
            case limit = "Limit"
            case taskID = "TaskID"
            case operators = "Operators"
            case districts = "Districts"
            case errorTypes = "ErrorTypes"
            case city = "City"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDetailedSingleProbeDataResponse) -> DescribeDetailedSingleProbeDataRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDetailedSingleProbeDataRequest(beginTime: self.beginTime, endTime: self.endTime, taskType: self.taskType, sortField: self.sortField, ascending: self.ascending, selectedFields: self.selectedFields, offset: self.offset + .init(response.getItems().count), limit: self.limit, taskID: self.taskID, operators: self.operators, districts: self.districts, errorTypes: self.errorTypes, city: self.city)
        }
    }

    /// DescribeDetailedSingleProbeData返回参数结构体
    public struct DescribeDetailedSingleProbeDataResponse: TCPaginatedResponse {
        /// 单次详情数据
        public let dataSet: [DetailedSingleDataDefine]

        /// 符合条件的数据总数
        public let totalNumber: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataSet = "DataSet"
            case totalNumber = "TotalNumber"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DetailedSingleDataDefine] {
            self.dataSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNumber
        }
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    @inlinable
    public func describeDetailedSingleProbeData(_ input: DescribeDetailedSingleProbeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetailedSingleProbeDataResponse> {
        self.client.execute(action: "DescribeDetailedSingleProbeData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    @inlinable
    public func describeDetailedSingleProbeData(_ input: DescribeDetailedSingleProbeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDetailedSingleProbeDataResponse {
        try await self.client.execute(action: "DescribeDetailedSingleProbeData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    @inlinable
    public func describeDetailedSingleProbeData(beginTime: UInt64, endTime: UInt64, taskType: String, sortField: String, ascending: Bool, selectedFields: [String], offset: Int64, limit: Int64, taskID: [String]? = nil, operators: [String]? = nil, districts: [String]? = nil, errorTypes: [String]? = nil, city: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetailedSingleProbeDataResponse> {
        let input = DescribeDetailedSingleProbeDataRequest(beginTime: beginTime, endTime: endTime, taskType: taskType, sortField: sortField, ascending: ascending, selectedFields: selectedFields, offset: offset, limit: limit, taskID: taskID, operators: operators, districts: districts, errorTypes: errorTypes, city: city)
        return self.client.execute(action: "DescribeDetailedSingleProbeData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    @inlinable
    public func describeDetailedSingleProbeData(beginTime: UInt64, endTime: UInt64, taskType: String, sortField: String, ascending: Bool, selectedFields: [String], offset: Int64, limit: Int64, taskID: [String]? = nil, operators: [String]? = nil, districts: [String]? = nil, errorTypes: [String]? = nil, city: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDetailedSingleProbeDataResponse {
        let input = DescribeDetailedSingleProbeDataRequest(beginTime: beginTime, endTime: endTime, taskType: taskType, sortField: sortField, ascending: ascending, selectedFields: selectedFields, offset: offset, limit: limit, taskID: taskID, operators: operators, districts: districts, errorTypes: errorTypes, city: city)
        return try await self.client.execute(action: "DescribeDetailedSingleProbeData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    @inlinable
    public func describeDetailedSingleProbeDataPaginated(_ input: DescribeDetailedSingleProbeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DetailedSingleDataDefine])> {
        self.client.paginate(input: input, region: region, command: self.describeDetailedSingleProbeData, logger: logger, on: eventLoop)
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    @inlinable @discardableResult
    public func describeDetailedSingleProbeDataPaginated(_ input: DescribeDetailedSingleProbeDataRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDetailedSingleProbeDataResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDetailedSingleProbeData, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列出单次拨测详情数据
    ///
    /// 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据
    ///
    /// - Returns: `AsyncSequence`s of `DetailedSingleDataDefine` and `DescribeDetailedSingleProbeDataResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDetailedSingleProbeDataPaginator(_ input: DescribeDetailedSingleProbeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDetailedSingleProbeDataRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDetailedSingleProbeData, logger: logger, on: eventLoop)
    }
}
