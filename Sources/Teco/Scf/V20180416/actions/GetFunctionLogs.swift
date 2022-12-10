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

@_exported import struct Foundation.Date

extension Scf {
    /// 获取函数运行日志
    ///
    /// 该接口根据指定的日志查询条件返回函数运行日志。该接口已下线，查询函数请求运行的返回信息，请使用 [GetRequestStatus](https://cloud.tencent.com/document/product/583/65348)。查询函数运行日志，请参考[日志检索教程](https://cloud.tencent.com/document/product/583/52637)。
    @inlinable
    public func getFunctionLogs(_ input: GetFunctionLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetFunctionLogsResponse > {
        self.client.execute(action: "GetFunctionLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取函数运行日志
    ///
    /// 该接口根据指定的日志查询条件返回函数运行日志。该接口已下线，查询函数请求运行的返回信息，请使用 [GetRequestStatus](https://cloud.tencent.com/document/product/583/65348)。查询函数运行日志，请参考[日志检索教程](https://cloud.tencent.com/document/product/583/52637)。
    @inlinable
    public func getFunctionLogs(_ input: GetFunctionLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFunctionLogsResponse {
        try await self.client.execute(action: "GetFunctionLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetFunctionLogs请求参数结构体
    public struct GetFunctionLogsRequest: TCRequestModel {
        /// 函数的名称。
        /// - 为保证[获取函数运行日志](https://cloud.tencent.com/document/product/583/18583)接口`GetFunctionLogs`兼容性，输入参数`FunctionName`仍为非必填项，但建议填写该参数，否则可能导致日志获取失败。
        /// - 函数关联日志服务后，建议使用[日志服务](https://cloud.tencent.com/document/product/614/16875)相关接口以获得最佳日志检索体验。
        public let functionName: String?
        
        /// 数据的偏移量，Offset+Limit不能大于10000
        public let offset: Int64?
        
        /// 返回数据的长度，Offset+Limit不能大于10000
        public let limit: Int64?
        
        /// 以升序还是降序的方式对日志进行排序，可选值 desc和 asc
        public let order: String?
        
        /// 根据某个字段排序日志,支持以下字段：function_name, duration, mem_usage, start_time
        public let orderBy: String?
        
        /// 日志过滤条件。可用来区分正确和错误日志，filter.RetCode=not0 表示只返回错误日志，filter.RetCode=is0 表示只返回正确日志，不传，则返回所有日志
        public let filter: LogFilter
        
        /// 函数的命名空间
        public let namespace: String?
        
        /// 函数的版本
        public let qualifier: String?
        
        /// 执行该函数对应的requestId
        public let functionRequestId: String?
        
        /// 查询的具体日期，例如：2017-05-16 20:00:00，只能与endtime相差一天之内
        public let startTime: Date?
        
        /// 查询的具体日期，例如：2017-05-16 20:59:59，只能与startTime相差一天之内
        public let endTime: Date?
        
        /// 该字段已下线
        public let searchContext: LogSearchContext
        
        public init (functionName: String?, offset: Int64?, limit: Int64?, order: String?, orderBy: String?, filter: LogFilter, namespace: String?, qualifier: String?, functionRequestId: String?, startTime: Date?, endTime: Date?, searchContext: LogSearchContext) {
            self.functionName = functionName
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderBy = orderBy
            self.filter = filter
            self.namespace = namespace
            self.qualifier = qualifier
            self.functionRequestId = functionRequestId
            self.startTime = startTime
            self.endTime = endTime
            self.searchContext = searchContext
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderBy = "OrderBy"
            case filter = "Filter"
            case namespace = "Namespace"
            case qualifier = "Qualifier"
            case functionRequestId = "FunctionRequestId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case searchContext = "SearchContext"
        }
    }
    
    /// GetFunctionLogs返回参数结构体
    public struct GetFunctionLogsResponse: TCResponseModel {
        /// 函数日志的总数
        public let totalCount: Int64
        
        /// 函数日志信息
        public let data: [FunctionLog]
        
        /// 该字段已下线
        public let searchContext: LogSearchContext
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case searchContext = "SearchContext"
            case requestId = "RequestId"
        }
    }
}
