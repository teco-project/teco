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

extension Live {
    /// 查询水印列表
    ///
    /// 查询水印列表。
    @inlinable
    public func describeLiveWatermarks(_ input: DescribeLiveWatermarksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveWatermarksResponse > {
        self.client.execute(action: "DescribeLiveWatermarks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询水印列表
    ///
    /// 查询水印列表。
    @inlinable
    public func describeLiveWatermarks(_ input: DescribeLiveWatermarksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveWatermarksResponse {
        try await self.client.execute(action: "DescribeLiveWatermarks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLiveWatermarks请求参数结构体
    public struct DescribeLiveWatermarksRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeLiveWatermarks返回参数结构体
    public struct DescribeLiveWatermarksResponse: TCResponseModel {
        /// 水印总个数。
        public let totalNum: UInt64
        
        /// 水印信息列表。
        public let watermarkList: [WatermarkInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case watermarkList = "WatermarkList"
            case requestId = "RequestId"
        }
    }
}
