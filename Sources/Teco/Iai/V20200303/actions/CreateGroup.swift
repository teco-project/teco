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
    /// CreateGroup请求参数结构体
    public struct CreateGroupRequest: TCRequestModel {
        /// 人员库名称，[1,60]个字符，可修改，不可重复。
        public let groupName: String

        /// 人员库 ID，不可修改，不可重复。支持英文、数字、-%@#&_，长度限制64B。
        public let groupId: String

        /// 人员库自定义描述字段，用于描述人员库中人员属性，该人员库下所有人员将拥有此描述字段。
        /// 最多可以创建5个。
        /// 每个自定义描述字段支持[1,30]个字符。
        /// 在同一人员库中自定义描述字段不可重复。
        /// 例： 设置某人员库“自定义描述字段”为["学号","工号","手机号"]，
        /// 则该人员库下所有人员将拥有名为“学号”、“工号”、“手机号”的描述字段，
        /// 可在对应人员描述字段中填写内容，登记该人员的学号、工号、手机号等信息。
        public let groupExDescriptions: [String]?

        /// 人员库信息备注，[0，40]个字符。
        public let tag: String?

        /// 人脸识别服务所用的算法模型版本。
        ///
        /// 目前入参支持 “2.0”和“3.0“ 两个输入。
        ///
        /// 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。
        ///
        /// 2020年11月26日后开通服务的账号仅支持输入“3.0”。
        ///
        /// 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        public let faceModelVersion: String?

        public init(groupName: String, groupId: String, groupExDescriptions: [String]? = nil, tag: String? = nil, faceModelVersion: String? = nil) {
            self.groupName = groupName
            self.groupId = groupId
            self.groupExDescriptions = groupExDescriptions
            self.tag = tag
            self.faceModelVersion = faceModelVersion
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupId = "GroupId"
            case groupExDescriptions = "GroupExDescriptions"
            case tag = "Tag"
            case faceModelVersion = "FaceModelVersion"
        }
    }

    /// CreateGroup返回参数结构体
    public struct CreateGroupResponse: TCResponseModel {
        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 创建人员库
    ///
    /// 用于创建一个空的人员库，如果人员库已存在返回错误。
    /// 可根据需要创建自定义描述字段，用于辅助描述该人员库下的人员信息。
    ///
    /// 1个APPID下最多创建10万个人员库（Group）、最多包含5000万张人脸（Face）。
    ///
    /// 不同算法模型版本（FaceModelVersion）的人员库（Group）最多可包含人脸（Face）数不同。算法模型版本为2.0的人员库最多包含100万张人脸，算法模型版本为3.0的人员库最多可包含300万张人脸。
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建人员库
    ///
    /// 用于创建一个空的人员库，如果人员库已存在返回错误。
    /// 可根据需要创建自定义描述字段，用于辅助描述该人员库下的人员信息。
    ///
    /// 1个APPID下最多创建10万个人员库（Group）、最多包含5000万张人脸（Face）。
    ///
    /// 不同算法模型版本（FaceModelVersion）的人员库（Group）最多可包含人脸（Face）数不同。算法模型版本为2.0的人员库最多包含100万张人脸，算法模型版本为3.0的人员库最多可包含300万张人脸。
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建人员库
    ///
    /// 用于创建一个空的人员库，如果人员库已存在返回错误。
    /// 可根据需要创建自定义描述字段，用于辅助描述该人员库下的人员信息。
    ///
    /// 1个APPID下最多创建10万个人员库（Group）、最多包含5000万张人脸（Face）。
    ///
    /// 不同算法模型版本（FaceModelVersion）的人员库（Group）最多可包含人脸（Face）数不同。算法模型版本为2.0的人员库最多包含100万张人脸，算法模型版本为3.0的人员库最多可包含300万张人脸。
    @inlinable
    public func createGroup(groupName: String, groupId: String, groupExDescriptions: [String]? = nil, tag: String? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        self.createGroup(CreateGroupRequest(groupName: groupName, groupId: groupId, groupExDescriptions: groupExDescriptions, tag: tag, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 创建人员库
    ///
    /// 用于创建一个空的人员库，如果人员库已存在返回错误。
    /// 可根据需要创建自定义描述字段，用于辅助描述该人员库下的人员信息。
    ///
    /// 1个APPID下最多创建10万个人员库（Group）、最多包含5000万张人脸（Face）。
    ///
    /// 不同算法模型版本（FaceModelVersion）的人员库（Group）最多可包含人脸（Face）数不同。算法模型版本为2.0的人员库最多包含100万张人脸，算法模型版本为3.0的人员库最多可包含300万张人脸。
    @inlinable
    public func createGroup(groupName: String, groupId: String, groupExDescriptions: [String]? = nil, tag: String? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.createGroup(CreateGroupRequest(groupName: groupName, groupId: groupId, groupExDescriptions: groupExDescriptions, tag: tag, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }
}
