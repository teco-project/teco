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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tci {
    /// CreatePerson请求参数结构体
    public struct CreatePersonRequest: TCRequestModel {
        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员名称
        public let personName: String

        /// 图片数据 base64 字符串，与 Urls 参数选择一个输入
        public let images: [String]?

        /// 人员工作号码
        public let jobNumber: String?

        /// 人员邮箱
        public let mail: String?

        /// 人员性别，0：未知 1：男性，2：女性
        public let male: Int64?

        /// 自定义人员 ID，注意不能使用 tci_person_ 前缀
        public let personId: String?

        /// 人员电话号码
        public let phoneNumber: String?

        /// 人员学生号码
        public let studentNumber: String?

        /// 图片下载地址，与 Images 参数选择一个输入
        public let urls: [String]?

        public init(libraryId: String, personName: String, images: [String]? = nil, jobNumber: String? = nil, mail: String? = nil, male: Int64? = nil, personId: String? = nil, phoneNumber: String? = nil, studentNumber: String? = nil, urls: [String]? = nil) {
            self.libraryId = libraryId
            self.personName = personName
            self.images = images
            self.jobNumber = jobNumber
            self.mail = mail
            self.male = male
            self.personId = personId
            self.phoneNumber = phoneNumber
            self.studentNumber = studentNumber
            self.urls = urls
        }

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case personName = "PersonName"
            case images = "Images"
            case jobNumber = "JobNumber"
            case mail = "Mail"
            case male = "Male"
            case personId = "PersonId"
            case phoneNumber = "PhoneNumber"
            case studentNumber = "StudentNumber"
            case urls = "Urls"
        }
    }

    /// CreatePerson返回参数结构体
    public struct CreatePersonResponse: TCResponseModel {
        /// 人脸操作结果信息
        public let faceInfoSet: [FaceInfo]

        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员唯一标识符
        public let personId: String

        /// 人员名称
        public let personName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case faceInfoSet = "FaceInfoSet"
            case libraryId = "LibraryId"
            case personId = "PersonId"
            case personName = "PersonName"
            case requestId = "RequestId"
        }
    }

    /// 创建人员
    @inlinable
    public func createPerson(_ input: CreatePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePersonResponse> {
        self.client.execute(action: "CreatePerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建人员
    @inlinable
    public func createPerson(_ input: CreatePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePersonResponse {
        try await self.client.execute(action: "CreatePerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建人员
    @inlinable
    public func createPerson(libraryId: String, personName: String, images: [String]? = nil, jobNumber: String? = nil, mail: String? = nil, male: Int64? = nil, personId: String? = nil, phoneNumber: String? = nil, studentNumber: String? = nil, urls: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePersonResponse> {
        self.createPerson(.init(libraryId: libraryId, personName: personName, images: images, jobNumber: jobNumber, mail: mail, male: male, personId: personId, phoneNumber: phoneNumber, studentNumber: studentNumber, urls: urls), region: region, logger: logger, on: eventLoop)
    }

    /// 创建人员
    @inlinable
    public func createPerson(libraryId: String, personName: String, images: [String]? = nil, jobNumber: String? = nil, mail: String? = nil, male: Int64? = nil, personId: String? = nil, phoneNumber: String? = nil, studentNumber: String? = nil, urls: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePersonResponse {
        try await self.createPerson(.init(libraryId: libraryId, personName: personName, images: images, jobNumber: jobNumber, mail: mail, male: male, personId: personId, phoneNumber: phoneNumber, studentNumber: studentNumber, urls: urls), region: region, logger: logger, on: eventLoop)
    }
}
