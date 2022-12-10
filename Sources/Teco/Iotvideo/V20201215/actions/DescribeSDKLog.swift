//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideo {
    /// 获取设备sdk日志
    ///
    /// 获取设备sdk日志
    @inlinable
    public func describeSDKLog(_ input: DescribeSDKLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSDKLogResponse > {
        self.client.execute(action: "DescribeSDKLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备sdk日志
    ///
    /// 获取设备sdk日志
    @inlinable
    public func describeSDKLog(_ input: DescribeSDKLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSDKLogResponse {
        try await self.client.execute(action: "DescribeSDKLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSDKLog请求参数结构体
    public struct DescribeSDKLogRequest: TCRequestModel {
        /// 日志开始时间
        public let minTime: UInt64
        
        /// 日志结束时间
        public let maxTime: UInt64
        
        /// 查询关键字，可以同时支持键值查询和文本查询，
        /// 例如，查询某key的值为value，并且包含某word的日志，该参数为：key:value word。
        /// 键值或文本可以包含多个，以空格隔开。
        /// 其中可以索引的key包括：productid、devicename、loglevel
        /// 一个典型的查询示例：productid:7JK1G72JNE devicename:name publish loglevel:WARN一个典型的查询示例：productid:ABCDE12345 devicename:test scene:SHADOW publish
        public let keywords: String
        
        /// 日志检索上下文
        public let context: String?
        
        /// 查询条数
        public let maxNum: UInt64?
        
        public init (minTime: UInt64, maxTime: UInt64, keywords: String, context: String?, maxNum: UInt64?) {
            self.minTime = minTime
            self.maxTime = maxTime
            self.keywords = keywords
            self.context = context
            self.maxNum = maxNum
        }
        
        enum CodingKeys: String, CodingKey {
            case minTime = "MinTime"
            case maxTime = "MaxTime"
            case keywords = "Keywords"
            case context = "Context"
            case maxNum = "MaxNum"
        }
    }
    
    /// DescribeSDKLog返回参数结构体
    public struct DescribeSDKLogResponse: TCResponseModel {
        /// 日志检索上下文
        public let context: String
        
        /// 是否还有日志，如有仍有日志，下次查询的请求带上当前请求返回的Context
        public let listover: Bool
        
        /// 日志列表
        public let results: [SDKLogItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case listover = "Listover"
            case results = "Results"
            case requestId = "RequestId"
        }
    }
}