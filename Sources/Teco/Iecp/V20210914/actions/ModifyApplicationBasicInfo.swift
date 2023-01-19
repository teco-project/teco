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

extension Iecp {
    /// ModifyApplicationBasicInfo请求参数结构体
    public struct ModifyApplicationBasicInfoRequest: TCRequestModel {
        /// 应用模板ID
        public let applicationId: UInt64

        /// 应用模板基本信息
        public let basicInfo: ApplicationBasicInfo

        public init(applicationId: UInt64, basicInfo: ApplicationBasicInfo) {
            self.applicationId = applicationId
            self.basicInfo = basicInfo
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case basicInfo = "BasicInfo"
        }
    }

    /// ModifyApplicationBasicInfo返回参数结构体
    public struct ModifyApplicationBasicInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改应用模板基本信息
    @inlinable
    public func modifyApplicationBasicInfo(_ input: ModifyApplicationBasicInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationBasicInfoResponse> {
        self.client.execute(action: "ModifyApplicationBasicInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用模板基本信息
    @inlinable
    public func modifyApplicationBasicInfo(_ input: ModifyApplicationBasicInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationBasicInfoResponse {
        try await self.client.execute(action: "ModifyApplicationBasicInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用模板基本信息
    @inlinable
    public func modifyApplicationBasicInfo(applicationId: UInt64, basicInfo: ApplicationBasicInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationBasicInfoResponse> {
        self.modifyApplicationBasicInfo(ModifyApplicationBasicInfoRequest(applicationId: applicationId, basicInfo: basicInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用模板基本信息
    @inlinable
    public func modifyApplicationBasicInfo(applicationId: UInt64, basicInfo: ApplicationBasicInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationBasicInfoResponse {
        try await self.modifyApplicationBasicInfo(ModifyApplicationBasicInfoRequest(applicationId: applicationId, basicInfo: basicInfo), region: region, logger: logger, on: eventLoop)
    }
}
