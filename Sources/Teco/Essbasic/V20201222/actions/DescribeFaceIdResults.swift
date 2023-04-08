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

extension Essbasic {
    /// DescribeFaceIdResults请求参数结构体
    public struct DescribeFaceIdResultsRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 慧眼业务ID
        public let wbAppId: String

        /// 订单号(orderNo); 限制在3个或以内
        public let orderNumbers: [String]

        /// 1:视频+照片,2:照片,3:视频,0（或其他数字）:无; 可选
        public let fileType: Int64?

        public init(caller: Caller, wbAppId: String, orderNumbers: [String], fileType: Int64? = nil) {
            self.caller = caller
            self.wbAppId = wbAppId
            self.orderNumbers = orderNumbers
            self.fileType = fileType
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case wbAppId = "WbAppId"
            case orderNumbers = "OrderNumbers"
            case fileType = "FileType"
        }
    }

    /// DescribeFaceIdResults返回参数结构体
    public struct DescribeFaceIdResultsResponse: TCResponseModel {
        /// 核身结果列表
        public let results: [FaceIdResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 获取慧眼人脸核身结果
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼人脸核身结果
    @inlinable
    public func describeFaceIdResults(_ input: DescribeFaceIdResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFaceIdResultsResponse> {
        self.client.execute(action: "DescribeFaceIdResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慧眼人脸核身结果
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼人脸核身结果
    @inlinable
    public func describeFaceIdResults(_ input: DescribeFaceIdResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFaceIdResultsResponse {
        try await self.client.execute(action: "DescribeFaceIdResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慧眼人脸核身结果
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼人脸核身结果
    @inlinable
    public func describeFaceIdResults(caller: Caller, wbAppId: String, orderNumbers: [String], fileType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFaceIdResultsResponse> {
        self.describeFaceIdResults(.init(caller: caller, wbAppId: wbAppId, orderNumbers: orderNumbers, fileType: fileType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慧眼人脸核身结果
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼人脸核身结果
    @inlinable
    public func describeFaceIdResults(caller: Caller, wbAppId: String, orderNumbers: [String], fileType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFaceIdResultsResponse {
        try await self.describeFaceIdResults(.init(caller: caller, wbAppId: wbAppId, orderNumbers: orderNumbers, fileType: fileType), region: region, logger: logger, on: eventLoop)
    }
}
