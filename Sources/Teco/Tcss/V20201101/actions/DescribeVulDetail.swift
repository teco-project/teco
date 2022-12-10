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
    /// 查询漏洞详情
    @inlinable
    public func describeVulDetail(_ input: DescribeVulDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVulDetailResponse > {
        self.client.execute(action: "DescribeVulDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询漏洞详情
    @inlinable
    public func describeVulDetail(_ input: DescribeVulDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDetailResponse {
        try await self.client.execute(action: "DescribeVulDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVulDetail请求参数结构体
    public struct DescribeVulDetailRequest: TCRequestModel {
        /// 漏洞PocID
        public let pocID: String
        
        public init (pocID: String) {
            self.pocID = pocID
        }
        
        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
        }
    }
    
    /// DescribeVulDetail返回参数结构体
    public struct DescribeVulDetailResponse: TCResponseModel {
        /// 漏洞详情信息
        public let vulInfo: VulDetailInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case vulInfo = "VulInfo"
            case requestId = "RequestId"
        }
    }
}
