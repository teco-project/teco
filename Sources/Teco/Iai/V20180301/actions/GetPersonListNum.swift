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

extension Iai {
    /// GetPersonListNum请求参数结构体
    public struct GetPersonListNumRequest: TCRequestModel {
        /// 人员库ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// GetPersonListNum返回参数结构体
    public struct GetPersonListNumResponse: TCResponseModel {
        /// 人员数量
        public let personNum: UInt64

        /// 人脸数量
        public let faceNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personNum = "PersonNum"
            case faceNum = "FaceNum"
            case requestId = "RequestId"
        }
    }

    /// 获取人员列表长度
    ///
    /// 获取指定人员库中人员数量。
    @inlinable
    public func getPersonListNum(_ input: GetPersonListNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonListNumResponse> {
        self.client.execute(action: "GetPersonListNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员列表长度
    ///
    /// 获取指定人员库中人员数量。
    @inlinable
    public func getPersonListNum(_ input: GetPersonListNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonListNumResponse {
        try await self.client.execute(action: "GetPersonListNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员列表长度
    ///
    /// 获取指定人员库中人员数量。
    @inlinable
    public func getPersonListNum(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonListNumResponse> {
        self.getPersonListNum(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员列表长度
    ///
    /// 获取指定人员库中人员数量。
    @inlinable
    public func getPersonListNum(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonListNumResponse {
        try await self.getPersonListNum(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
