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

extension Mps {
    /// ModifyPersonSample请求参数结构体
    public struct ModifyPersonSampleRequest: TCRequestModel {
        /// 素材 ID。
        public let personId: String

        /// 名称，长度限制：128 个字符。
        public let name: String?

        /// 描述，长度限制：1024 个字符。
        public let description: String?

        /// 素材应用场景，可选值：
        /// 1. Recognition：用于内容识别，等价于 Recognition.Face。
        /// 2. Review：用于不适宜的内容识别，等价于 Review.Face。
        /// 3. All：用于内容识别、不适宜的内容识别，等价于 1+2。
        public let usages: [String]?

        /// 五官操作信息。
        public let faceOperationInfo: AiSampleFaceOperation?

        /// 标签操作信息。
        public let tagOperationInfo: AiSampleTagOperation?

        public init(personId: String, name: String? = nil, description: String? = nil, usages: [String]? = nil, faceOperationInfo: AiSampleFaceOperation? = nil, tagOperationInfo: AiSampleTagOperation? = nil) {
            self.personId = personId
            self.name = name
            self.description = description
            self.usages = usages
            self.faceOperationInfo = faceOperationInfo
            self.tagOperationInfo = tagOperationInfo
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case name = "Name"
            case description = "Description"
            case usages = "Usages"
            case faceOperationInfo = "FaceOperationInfo"
            case tagOperationInfo = "TagOperationInfo"
        }
    }

    /// ModifyPersonSample返回参数结构体
    public struct ModifyPersonSampleResponse: TCResponseModel {
        /// 素材信息。
        public let person: AiSamplePerson

        /// 处理失败的五官信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failFaceInfoSet: [AiSampleFailFaceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case person = "Person"
            case failFaceInfoSet = "FailFaceInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 修改素材样本
    ///
    /// 该接口用于根据素材 ID，修改素材样本信息，包括名称、描述的修改，以及五官、标签的添加、删除、重置操作。五官删除操作需保证至少剩余 1 张图片，否则，请使用重置操作。
    @inlinable
    public func modifyPersonSample(_ input: ModifyPersonSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonSampleResponse> {
        self.client.execute(action: "ModifyPersonSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改素材样本
    ///
    /// 该接口用于根据素材 ID，修改素材样本信息，包括名称、描述的修改，以及五官、标签的添加、删除、重置操作。五官删除操作需保证至少剩余 1 张图片，否则，请使用重置操作。
    @inlinable
    public func modifyPersonSample(_ input: ModifyPersonSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonSampleResponse {
        try await self.client.execute(action: "ModifyPersonSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改素材样本
    ///
    /// 该接口用于根据素材 ID，修改素材样本信息，包括名称、描述的修改，以及五官、标签的添加、删除、重置操作。五官删除操作需保证至少剩余 1 张图片，否则，请使用重置操作。
    @inlinable
    public func modifyPersonSample(personId: String, name: String? = nil, description: String? = nil, usages: [String]? = nil, faceOperationInfo: AiSampleFaceOperation? = nil, tagOperationInfo: AiSampleTagOperation? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonSampleResponse> {
        self.modifyPersonSample(ModifyPersonSampleRequest(personId: personId, name: name, description: description, usages: usages, faceOperationInfo: faceOperationInfo, tagOperationInfo: tagOperationInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 修改素材样本
    ///
    /// 该接口用于根据素材 ID，修改素材样本信息，包括名称、描述的修改，以及五官、标签的添加、删除、重置操作。五官删除操作需保证至少剩余 1 张图片，否则，请使用重置操作。
    @inlinable
    public func modifyPersonSample(personId: String, name: String? = nil, description: String? = nil, usages: [String]? = nil, faceOperationInfo: AiSampleFaceOperation? = nil, tagOperationInfo: AiSampleTagOperation? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonSampleResponse {
        try await self.modifyPersonSample(ModifyPersonSampleRequest(personId: personId, name: name, description: description, usages: usages, faceOperationInfo: faceOperationInfo, tagOperationInfo: tagOperationInfo), region: region, logger: logger, on: eventLoop)
    }
}
