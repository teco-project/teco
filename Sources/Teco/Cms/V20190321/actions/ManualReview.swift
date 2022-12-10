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

extension Cms {
    /// 人工审核对外接口
    ///
    /// 人工审核对外接口
    @inlinable
    public func manualReview(_ input: ManualReviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ManualReviewResponse > {
        self.client.execute(action: "ManualReview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 人工审核对外接口
    ///
    /// 人工审核对外接口
    @inlinable
    public func manualReview(_ input: ManualReviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManualReviewResponse {
        try await self.client.execute(action: "ManualReview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ManualReview请求参数结构体
    public struct ManualReviewRequest: TCRequestModel {
        /// 人工审核信息
        public let reviewContent: ManualReviewContent
        
        public init (reviewContent: ManualReviewContent) {
            self.reviewContent = reviewContent
        }
        
        enum CodingKeys: String, CodingKey {
            case reviewContent = "ReviewContent"
        }
    }
    
    /// ManualReview返回参数结构体
    public struct ManualReviewResponse: TCResponseModel {
        /// 人审接口同步响应结果
        public let data: ManualReviewData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}