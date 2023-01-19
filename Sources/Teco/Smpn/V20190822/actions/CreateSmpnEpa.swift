//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// CreateSmpnEpa请求参数结构体
    public struct CreateSmpnEpaRequest: TCRequestModel {
        /// 企业号码认证请求内容
        public let requestData: EPARequest

        /// 用于计费的资源ID
        public let resourceId: String

        public init(requestData: EPARequest, resourceId: String) {
            self.requestData = requestData
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case requestData = "RequestData"
            case resourceId = "ResourceId"
        }
    }

    /// CreateSmpnEpa返回参数结构体
    public struct CreateSmpnEpaResponse: TCResponseModel {
        /// 业号码认证回应内容
        public let responseData: EPAResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case responseData = "ResponseData"
            case requestId = "RequestId"
        }
    }

    /// 企业号码认证
    @inlinable
    public func createSmpnEpa(_ input: CreateSmpnEpaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSmpnEpaResponse> {
        self.client.execute(action: "CreateSmpnEpa", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 企业号码认证
    @inlinable
    public func createSmpnEpa(_ input: CreateSmpnEpaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSmpnEpaResponse {
        try await self.client.execute(action: "CreateSmpnEpa", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 企业号码认证
    @inlinable
    public func createSmpnEpa(requestData: EPARequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSmpnEpaResponse> {
        self.createSmpnEpa(CreateSmpnEpaRequest(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 企业号码认证
    @inlinable
    public func createSmpnEpa(requestData: EPARequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSmpnEpaResponse {
        try await self.createSmpnEpa(CreateSmpnEpaRequest(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
