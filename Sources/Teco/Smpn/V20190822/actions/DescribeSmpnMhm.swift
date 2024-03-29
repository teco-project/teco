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

import Logging
import NIOCore
import TecoCore

extension Smpn {
    /// DescribeSmpnMhm请求参数结构体
    public struct DescribeSmpnMhmRequest: TCRequest {
        /// 号码营销监控请求内容
        public let requestData: MHMRequest

        /// 用于计费的资源ID
        public let resourceId: String

        public init(requestData: MHMRequest, resourceId: String) {
            self.requestData = requestData
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case requestData = "RequestData"
            case resourceId = "ResourceId"
        }
    }

    /// DescribeSmpnMhm返回参数结构体
    public struct DescribeSmpnMhmResponse: TCResponse {
        /// 号码营销监控回应内容
        public let responseData: MHMResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case responseData = "ResponseData"
            case requestId = "RequestId"
        }
    }

    /// 号码营销监控
    @inlinable
    public func describeSmpnMhm(_ input: DescribeSmpnMhmRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmpnMhmResponse> {
        self.client.execute(action: "DescribeSmpnMhm", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 号码营销监控
    @inlinable
    public func describeSmpnMhm(_ input: DescribeSmpnMhmRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmpnMhmResponse {
        try await self.client.execute(action: "DescribeSmpnMhm", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 号码营销监控
    @inlinable
    public func describeSmpnMhm(requestData: MHMRequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmpnMhmResponse> {
        self.describeSmpnMhm(.init(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 号码营销监控
    @inlinable
    public func describeSmpnMhm(requestData: MHMRequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmpnMhmResponse {
        try await self.describeSmpnMhm(.init(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
