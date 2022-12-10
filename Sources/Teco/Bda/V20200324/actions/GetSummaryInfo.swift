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

extension Bda {
    /// 获取人体库汇总信息
    ///
    /// 获取人体库汇总信息。
    @inlinable
    public func getSummaryInfo(_ input: GetSummaryInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetSummaryInfoResponse > {
        self.client.execute(action: "GetSummaryInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取人体库汇总信息
    ///
    /// 获取人体库汇总信息。
    @inlinable
    public func getSummaryInfo(_ input: GetSummaryInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSummaryInfoResponse {
        try await self.client.execute(action: "GetSummaryInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetSummaryInfo请求参数结构体
    public struct GetSummaryInfoRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// GetSummaryInfo返回参数结构体
    public struct GetSummaryInfoResponse: TCResponseModel {
        /// 人体库总数量。
        public let groupCount: UInt64
        
        /// 人员总数量
        public let personCount: UInt64
        
        /// 人员轨迹总数量
        public let traceCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groupCount = "GroupCount"
            case personCount = "PersonCount"
            case traceCount = "TraceCount"
            case requestId = "RequestId"
        }
    }
}