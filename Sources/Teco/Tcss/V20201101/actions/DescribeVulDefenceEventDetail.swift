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

extension Tcss {
    /// 查询漏洞防御事件详情
    @inlinable
    public func describeVulDefenceEventDetail(_ input: DescribeVulDefenceEventDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVulDefenceEventDetailResponse > {
        self.client.execute(action: "DescribeVulDefenceEventDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询漏洞防御事件详情
    @inlinable
    public func describeVulDefenceEventDetail(_ input: DescribeVulDefenceEventDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceEventDetailResponse {
        try await self.client.execute(action: "DescribeVulDefenceEventDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVulDefenceEventDetail请求参数结构体
    public struct DescribeVulDefenceEventDetailRequest: TCRequestModel {
        /// 事件ID
        public let eventID: Int64
        
        public init (eventID: Int64) {
            self.eventID = eventID
        }
        
        enum CodingKeys: String, CodingKey {
            case eventID = "EventID"
        }
    }
    
    /// DescribeVulDefenceEventDetail返回参数结构体
    public struct DescribeVulDefenceEventDetailResponse: TCResponseModel {
        /// 漏洞防御事件详细
        public let eventDetail: VulDefenceEventDetail
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eventDetail = "EventDetail"
            case requestId = "RequestId"
        }
    }
}
