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

extension Tci {
    /// ModifyPerson请求参数结构体
    public struct ModifyPersonRequest: TCRequestModel {
        /// 人员库唯一标识符
        public let libraryId: String

        /// 人员唯一标识符
        public let personId: String

        /// 人员工作号码
        public let jobNumber: String?

        /// 人员邮箱
        public let mail: String?

        /// 人员性别
        public let male: Int64?

        /// 人员名称
        public let personName: String?

        /// 人员电话号码
        public let phoneNumber: String?

        /// 人员学生号码
        public let studentNumber: String?

        public init(libraryId: String, personId: String, jobNumber: String? = nil, mail: String? = nil, male: Int64? = nil, personName: String? = nil, phoneNumber: String? = nil, studentNumber: String? = nil) {
            self.libraryId = libraryId
            self.personId = personId
            self.jobNumber = jobNumber
            self.mail = mail
            self.male = male
            self.personName = personName
            self.phoneNumber = phoneNumber
            self.studentNumber = studentNumber
        }

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case personId = "PersonId"
            case jobNumber = "JobNumber"
            case mail = "Mail"
            case male = "Male"
            case personName = "PersonName"
            case phoneNumber = "PhoneNumber"
            case studentNumber = "StudentNumber"
        }
    }

    /// ModifyPerson返回参数结构体
    public struct ModifyPersonResponse: TCResponseModel {
        /// 人脸信息
        public let faceInfoSet: [FaceInfo]

        /// 人员所属人员库标识符
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

    /// 修改人员信息
    @inlinable
    public func modifyPerson(_ input: ModifyPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonResponse> {
        self.client.execute(action: "ModifyPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改人员信息
    @inlinable
    public func modifyPerson(_ input: ModifyPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonResponse {
        try await self.client.execute(action: "ModifyPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改人员信息
    @inlinable
    public func modifyPerson(libraryId: String, personId: String, jobNumber: String? = nil, mail: String? = nil, male: Int64? = nil, personName: String? = nil, phoneNumber: String? = nil, studentNumber: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonResponse> {
        self.modifyPerson(.init(libraryId: libraryId, personId: personId, jobNumber: jobNumber, mail: mail, male: male, personName: personName, phoneNumber: phoneNumber, studentNumber: studentNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 修改人员信息
    @inlinable
    public func modifyPerson(libraryId: String, personId: String, jobNumber: String? = nil, mail: String? = nil, male: Int64? = nil, personName: String? = nil, phoneNumber: String? = nil, studentNumber: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonResponse {
        try await self.modifyPerson(.init(libraryId: libraryId, personId: personId, jobNumber: jobNumber, mail: mail, male: male, personName: personName, phoneNumber: phoneNumber, studentNumber: studentNumber), region: region, logger: logger, on: eventLoop)
    }
}
