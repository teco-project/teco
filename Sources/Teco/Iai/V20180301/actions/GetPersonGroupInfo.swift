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

extension Iai {
    /// GetPersonGroupInfo请求参数结构体
    public struct GetPersonGroupInfoRequest: TCRequestModel {
        /// 人员ID
        public let personId: String

        /// 起始序号，默认值为0
        public let offset: UInt64?

        /// 返回数量，默认值为10，最大值为100
        public let limit: UInt64?

        public init(personId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.personId = personId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// GetPersonGroupInfo返回参数结构体
    public struct GetPersonGroupInfoResponse: TCResponseModel {
        /// 包含此人员的人员库及描述字段内容列表
        public let personGroupInfos: [PersonGroupInfo]

        /// 人员库总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupNum: UInt64?

        /// 人脸识别服务所用的算法模型版本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faceModelVersion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personGroupInfos = "PersonGroupInfos"
            case groupNum = "GroupNum"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonGroupInfoResponse> {
        self.client.execute(action: "GetPersonGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonGroupInfoResponse {
        try await self.client.execute(action: "GetPersonGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(personId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonGroupInfoResponse> {
        self.getPersonGroupInfo(GetPersonGroupInfoRequest(personId: personId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(personId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonGroupInfoResponse {
        try await self.getPersonGroupInfo(GetPersonGroupInfoRequest(personId: personId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
