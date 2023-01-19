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

extension Tdid {
    /// GetCptList请求参数结构体
    public struct GetCptListRequest: TCRequestModel {
        /// 起始位置
        public let displayStart: UInt64

        /// 长度
        public let displayLength: UInt64

        /// 模板类型，0: 所有模板，1: 系统模板，2: 用户模板，3:普通模板
        public let cptType: UInt64?

        public init(displayStart: UInt64, displayLength: UInt64, cptType: UInt64? = nil) {
            self.displayStart = displayStart
            self.displayLength = displayLength
            self.cptType = cptType
        }

        enum CodingKeys: String, CodingKey {
            case displayStart = "DisplayStart"
            case displayLength = "DisplayLength"
            case cptType = "CptType"
        }
    }

    /// GetCptList返回参数结构体
    public struct GetCptListResponse: TCResponseModel {
        /// cpt数据集合
        public let cptDataList: [CptListData]

        /// 凭证模板总数
        public let allCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cptDataList = "CptDataList"
            case allCount = "AllCount"
            case requestId = "RequestId"
        }
    }

    /// 凭证模版列表
    @inlinable
    public func getCptList(_ input: GetCptListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCptListResponse> {
        self.client.execute(action: "GetCptList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 凭证模版列表
    @inlinable
    public func getCptList(_ input: GetCptListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCptListResponse {
        try await self.client.execute(action: "GetCptList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 凭证模版列表
    @inlinable
    public func getCptList(displayStart: UInt64, displayLength: UInt64, cptType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCptListResponse> {
        self.getCptList(GetCptListRequest(displayStart: displayStart, displayLength: displayLength, cptType: cptType), region: region, logger: logger, on: eventLoop)
    }

    /// 凭证模版列表
    @inlinable
    public func getCptList(displayStart: UInt64, displayLength: UInt64, cptType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCptListResponse {
        try await self.getCptList(GetCptListRequest(displayStart: displayStart, displayLength: displayLength, cptType: cptType), region: region, logger: logger, on: eventLoop)
    }
}
