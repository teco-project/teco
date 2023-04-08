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

import TecoCore

extension Tcb {
    /// CommonServiceAPI请求参数结构体
    public struct CommonServiceAPIRequest: TCRequestModel {
        /// Service名，需要转发访问的接口名
        public let service: String

        /// 需要转发的云API参数，要转成JSON格式
        public let jsonData: String?

        /// 指定角色
        public let apiRole: String?

        public init(service: String, jsonData: String? = nil, apiRole: String? = nil) {
            self.service = service
            self.jsonData = jsonData
            self.apiRole = apiRole
        }

        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case jsonData = "JSONData"
            case apiRole = "ApiRole"
        }
    }

    /// CommonServiceAPI返回参数结构体
    public struct CommonServiceAPIResponse: TCResponseModel {
        /// json格式response
        public let jsonResp: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jsonResp = "JSONResp"
            case requestId = "RequestId"
        }
    }

    /// TCB云API统一入口
    @inlinable
    public func commonServiceAPI(_ input: CommonServiceAPIRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommonServiceAPIResponse> {
        self.client.execute(action: "CommonServiceAPI", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// TCB云API统一入口
    @inlinable
    public func commonServiceAPI(_ input: CommonServiceAPIRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommonServiceAPIResponse {
        try await self.client.execute(action: "CommonServiceAPI", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// TCB云API统一入口
    @inlinable
    public func commonServiceAPI(service: String, jsonData: String? = nil, apiRole: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommonServiceAPIResponse> {
        self.commonServiceAPI(.init(service: service, jsonData: jsonData, apiRole: apiRole), region: region, logger: logger, on: eventLoop)
    }

    /// TCB云API统一入口
    @inlinable
    public func commonServiceAPI(service: String, jsonData: String? = nil, apiRole: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommonServiceAPIResponse {
        try await self.commonServiceAPI(.init(service: service, jsonData: jsonData, apiRole: apiRole), region: region, logger: logger, on: eventLoop)
    }
}
