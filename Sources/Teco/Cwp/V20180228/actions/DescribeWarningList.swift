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

extension Cwp {
    /// DescribeWarningList请求参数结构体
    public struct DescribeWarningListRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeWarningList返回参数结构体
    public struct DescribeWarningListResponse: TCResponseModel {
        /// 获取告警列表
        public let warningInfoList: [WarningInfoObj]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case warningInfoList = "WarningInfoList"
            case requestId = "RequestId"
        }
    }
    
    /// 获取当前用户告警列表
    @inlinable
    public func describeWarningList(_ input: DescribeWarningListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWarningListResponse > {
        self.client.execute(action: "DescribeWarningList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取当前用户告警列表
    @inlinable
    public func describeWarningList(_ input: DescribeWarningListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWarningListResponse {
        try await self.client.execute(action: "DescribeWarningList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
