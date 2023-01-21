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
    /// GetPersonBaseInfo请求参数结构体
    public struct GetPersonBaseInfoRequest: TCRequestModel {
        /// 人员ID，创建人员接口中的PersonId
        public let personId: String

        public init(personId: String) {
            self.personId = personId
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
        }
    }

    /// GetPersonBaseInfo返回参数结构体
    public struct GetPersonBaseInfoResponse: TCResponseModel {
        /// 人员名称
        public let personName: String

        /// 人员性别，0代表未填写，1代表男性，2代表女性
        public let gender: Int64

        /// 包含的人脸 ID 列表
        public let faceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personName = "PersonName"
            case gender = "Gender"
            case faceIds = "FaceIds"
            case requestId = "RequestId"
        }
    }

    /// 获取人员基础信息
    ///
    /// 获取指定人员的信息，包括姓名、性别、人脸等。
    @inlinable
    public func getPersonBaseInfo(_ input: GetPersonBaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonBaseInfoResponse> {
        self.client.execute(action: "GetPersonBaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员基础信息
    ///
    /// 获取指定人员的信息，包括姓名、性别、人脸等。
    @inlinable
    public func getPersonBaseInfo(_ input: GetPersonBaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonBaseInfoResponse {
        try await self.client.execute(action: "GetPersonBaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员基础信息
    ///
    /// 获取指定人员的信息，包括姓名、性别、人脸等。
    @inlinable
    public func getPersonBaseInfo(personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonBaseInfoResponse> {
        self.getPersonBaseInfo(GetPersonBaseInfoRequest(personId: personId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员基础信息
    ///
    /// 获取指定人员的信息，包括姓名、性别、人脸等。
    @inlinable
    public func getPersonBaseInfo(personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonBaseInfoResponse {
        try await self.getPersonBaseInfo(GetPersonBaseInfoRequest(personId: personId), region: region, logger: logger, on: eventLoop)
    }
}
