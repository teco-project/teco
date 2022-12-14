//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Tci {
    /// DescribePerson请求参数结构体
    public struct DescribePersonRequest: TCRequestModel {
        /// 人员库唯一标识符
        public let libraryId: String
        
        /// 人员唯一标识符
        public let personId: String
        
        public init (libraryId: String, personId: String) {
            self.libraryId = libraryId
            self.personId = personId
        }
        
        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case personId = "PersonId"
        }
    }
    
    /// DescribePerson返回参数结构体
    public struct DescribePersonResponse: TCResponseModel {
        /// 人员人脸列表
        public let faceSet: [Face]
        
        /// 创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var createTime: Date
        
        /// 工作号码
        public let jobNumber: String
        
        /// 人员库唯一标识符
        public let libraryId: String
        
        /// 邮箱
        public let mail: String
        
        /// 性别
        public let male: Int64
        
        /// 人员唯一标识符
        public let personId: String
        
        /// 人员名称
        public let personName: String
        
        /// 电话号码
        public let phoneNumber: String
        
        /// 学生号码
        public let studentNumber: String
        
        /// 修改时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var updateTime: Date
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case faceSet = "FaceSet"
            case createTime = "CreateTime"
            case jobNumber = "JobNumber"
            case libraryId = "LibraryId"
            case mail = "Mail"
            case male = "Male"
            case personId = "PersonId"
            case personName = "PersonName"
            case phoneNumber = "PhoneNumber"
            case studentNumber = "StudentNumber"
            case updateTime = "UpdateTime"
            case requestId = "RequestId"
        }
    }
    
    /// 获取人员详情
    @inlinable
    public func describePerson(_ input: DescribePersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePersonResponse > {
        self.client.execute(action: "DescribePerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取人员详情
    @inlinable
    public func describePerson(_ input: DescribePersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonResponse {
        try await self.client.execute(action: "DescribePerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 获取人员详情
    @inlinable
    public func describePerson(libraryId: String, personId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePersonResponse > {
        self.describePerson(DescribePersonRequest(libraryId: libraryId, personId: personId), logger: logger, on: eventLoop)
    }
    
    /// 获取人员详情
    @inlinable
    public func describePerson(libraryId: String, personId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonResponse {
        try await self.describePerson(DescribePersonRequest(libraryId: libraryId, personId: personId), logger: logger, on: eventLoop)
    }
}
