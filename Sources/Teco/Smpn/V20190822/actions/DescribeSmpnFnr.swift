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

extension Smpn {
    /// DescribeSmpnFnr请求参数结构体
    public struct DescribeSmpnFnrRequest: TCRequestModel {
        /// 虚假号码识别请求内容
        public let requestData: FNRRequest

        /// 用于计费的资源ID
        public let resourceId: String

        public init(requestData: FNRRequest, resourceId: String) {
            self.requestData = requestData
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case requestData = "RequestData"
            case resourceId = "ResourceId"
        }
    }

    /// DescribeSmpnFnr返回参数结构体
    public struct DescribeSmpnFnrResponse: TCResponseModel {
        /// 虚假号码识别回应内容
        public let responseData: FNRResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case responseData = "ResponseData"
            case requestId = "RequestId"
        }
    }

    /// 虚假号码识别
    @inlinable
    public func describeSmpnFnr(_ input: DescribeSmpnFnrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmpnFnrResponse> {
        self.client.execute(action: "DescribeSmpnFnr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 虚假号码识别
    @inlinable
    public func describeSmpnFnr(_ input: DescribeSmpnFnrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmpnFnrResponse {
        try await self.client.execute(action: "DescribeSmpnFnr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 虚假号码识别
    @inlinable
    public func describeSmpnFnr(requestData: FNRRequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmpnFnrResponse> {
        self.describeSmpnFnr(.init(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 虚假号码识别
    @inlinable
    public func describeSmpnFnr(requestData: FNRRequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmpnFnrResponse {
        try await self.describeSmpnFnr(.init(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
