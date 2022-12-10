//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIaiError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case accountFaceNumExceed = "InvalidParameterValue.AccountFaceNumExceed"
            case deleteFaceNumExceed = "InvalidParameterValue.DeleteFaceNumExceed"
            case faceMatchThresholdIllegal = "InvalidParameterValue.FaceMatchThresholdIllegal"
            case faceModelVersionIllegal = "InvalidParameterValue.FaceModelVersionIllegal"
            case groupExDescriptionsExceed = "InvalidParameterValue.GroupExDescriptionsExceed"
            case groupExDescriptionsNameIdentical = "InvalidParameterValue.GroupExDescriptionsNameIdentical"
            case groupExDescriptionsNameIllegal = "InvalidParameterValue.GroupExDescriptionsNameIllegal"
            case groupExDescriptionsNameTooLong = "InvalidParameterValue.GroupExDescriptionsNameTooLong"
            case groupFaceNumExceed = "InvalidParameterValue.GroupFaceNumExceed"
            case groupIdAlreadyExist = "InvalidParameterValue.GroupIdAlreadyExist"
            case groupIdIllegal = "InvalidParameterValue.GroupIdIllegal"
            case groupIdNotExist = "InvalidParameterValue.GroupIdNotExist"
            case groupIdNotExists = "InvalidParameterValue.GroupIdNotExists"
            case groupIdTooLong = "InvalidParameterValue.GroupIdTooLong"
            case groupIdsExceed = "InvalidParameterValue.GroupIdsExceed"
            case groupNameAlreadyExist = "InvalidParameterValue.GroupNameAlreadyExist"
            case groupNameIllegal = "InvalidParameterValue.GroupNameIllegal"
            case groupNameTooLong = "InvalidParameterValue.GroupNameTooLong"
            case groupNumExceed = "InvalidParameterValue.GroupNumExceed"
            case groupNumPerPersonExceed = "InvalidParameterValue.GroupNumPerPersonExceed"
            case groupTagIllegal = "InvalidParameterValue.GroupTagIllegal"
            case groupTagTooLong = "InvalidParameterValue.GroupTagTooLong"
            case imageEmpty = "InvalidParameterValue.ImageEmpty"
            case imageEmptyError = "InvalidParameterValue.ImageEmptyError"
            case limitExceed = "InvalidParameterValue.LimitExceed"
            case noFaceInGroups = "InvalidParameterValue.NoFaceInGroups"
            case noFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
            case offsetExceed = "InvalidParameterValue.OffsetExceed"
            case personExDescriptionInfosExceed = "InvalidParameterValue.PersonExDescriptionInfosExceed"
            case personExDescriptionsNameIdentical = "InvalidParameterValue.PersonExDescriptionsNameIdentical"
            case personExDescriptionsNameIllegal = "InvalidParameterValue.PersonExDescriptionsNameIllegal"
            case personExDescriptionsNameTooLong = "InvalidParameterValue.PersonExDescriptionsNameTooLong"
            case personExistInGroup = "InvalidParameterValue.PersonExistInGroup"
            case personFaceNumExceed = "InvalidParameterValue.PersonFaceNumExceed"
            case personGenderIllegal = "InvalidParameterValue.PersonGenderIllegal"
            case personIdAlreadyExist = "InvalidParameterValue.PersonIdAlreadyExist"
            case personIdIllegal = "InvalidParameterValue.PersonIdIllegal"
            case personIdNotExist = "InvalidParameterValue.PersonIdNotExist"
            case personIdTooLong = "InvalidParameterValue.PersonIdTooLong"
            case personNameIllegal = "InvalidParameterValue.PersonNameIllegal"
            case personNameTooLong = "InvalidParameterValue.PersonNameTooLong"
            case qualityControlIllegal = "InvalidParameterValue.QualityControlIllegal"
            case searchPersonsExceed = "InvalidParameterValue.SearchPersonsExceed"
            case uniquePersonControlIllegal = "InvalidParameterValue.UniquePersonControlIllegal"
            case unsupportedGroupFaceModelVersion = "InvalidParameterValue.UnsupportedGroupFaceModelVersion"
            case uploadFaceNumExceed = "InvalidParameterValue.UploadFaceNumExceed"
            case urlIllegal = "InvalidParameterValue.UrlIllegal"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 账号脸数量超出限制。
        public static var accountFaceNumExceed: InvalidParameterValue {
            InvalidParameterValue(.accountFaceNumExceed)
        }
        
        /// 删除人脸数量超出限制。每个人员至少需要包含一张人脸。
        public static var deleteFaceNumExceed: InvalidParameterValue {
            InvalidParameterValue(.deleteFaceNumExceed)
        }
        
        /// FaceMatchThreshold参数不合法。
        public static var faceMatchThresholdIllegal: InvalidParameterValue {
            InvalidParameterValue(.faceMatchThresholdIllegal)
        }
        
        /// 算法模型版本不合法。
        public static var faceModelVersionIllegal: InvalidParameterValue {
            InvalidParameterValue(.faceModelVersionIllegal)
        }
        
        /// 人员库自定义描述字段数组长度超过限制。最多可以创建5个。
        public static var groupExDescriptionsExceed: InvalidParameterValue {
            InvalidParameterValue(.groupExDescriptionsExceed)
        }
        
        /// 人员库自定义描述字段名称不可重复。
        public static var groupExDescriptionsNameIdentical: InvalidParameterValue {
            InvalidParameterValue(.groupExDescriptionsNameIdentical)
        }
        
        /// 人员库自定义描述字段名称包含非法字符。人员库自定义描述字段名称只支持中英文、-、_、数字。
        public static var groupExDescriptionsNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.groupExDescriptionsNameIllegal)
        }
        
        /// 人员库自定义描述字段名称长度超出限制。
        public static var groupExDescriptionsNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.groupExDescriptionsNameTooLong)
        }
        
        /// 人员库人脸数量超出限制。
        public static var groupFaceNumExceed: InvalidParameterValue {
            InvalidParameterValue(.groupFaceNumExceed)
        }
        
        /// 人员库ID已经存在。人员库ID不可重复。
        public static var groupIdAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.groupIdAlreadyExist)
        }
        
        /// 人员库ID包含非法字符。人员库ID只支持英文、数字、-%@#&amp;_。
        public static var groupIdIllegal: InvalidParameterValue {
            InvalidParameterValue(.groupIdIllegal)
        }
        
        /// 人员库ID不存在。
        public static var groupIdNotExist: InvalidParameterValue {
            InvalidParameterValue(.groupIdNotExist)
        }
        
        /// 对应的人员库ID在库中不存在。
        public static var groupIdNotExists: InvalidParameterValue {
            InvalidParameterValue(.groupIdNotExists)
        }
        
        /// 人员库ID超出长度限制。
        public static var groupIdTooLong: InvalidParameterValue {
            InvalidParameterValue(.groupIdTooLong)
        }
        
        /// 传入的人员库列表超过限制。
        public static var groupIdsExceed: InvalidParameterValue {
            InvalidParameterValue(.groupIdsExceed)
        }
        
        /// 人员库名称已经存在。人员库名称不可重复。
        public static var groupNameAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.groupNameAlreadyExist)
        }
        
        /// 人员库名称包含非法字符。人员库名称只支持中英文、-、_、数字。
        public static var groupNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.groupNameIllegal)
        }
        
        /// 人员库名称超出长度限制。
        public static var groupNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.groupNameTooLong)
        }
        
        /// 人员库数量超出限制。如需增加，请联系我们。
        public static var groupNumExceed: InvalidParameterValue {
            InvalidParameterValue(.groupNumExceed)
        }
        
        /// 人员库数量超出限制。单个人员最多可被添加至100个人员库。
        public static var groupNumPerPersonExceed: InvalidParameterValue {
            InvalidParameterValue(.groupNumPerPersonExceed)
        }
        
        /// 人员库备注包含非法字符。人员库备注只支持中英文、-、_、数字。
        public static var groupTagIllegal: InvalidParameterValue {
            InvalidParameterValue(.groupTagIllegal)
        }
        
        /// 人员库备注超出长度限制。
        public static var groupTagTooLong: InvalidParameterValue {
            InvalidParameterValue(.groupTagTooLong)
        }
        
        /// 图片为空。
        public static var imageEmpty: InvalidParameterValue {
            InvalidParameterValue(.imageEmpty)
        }
        
        /// 图片为空。
        public static var imageEmptyError: InvalidParameterValue {
            InvalidParameterValue(.imageEmptyError)
        }
        
        /// 返回数量超出限制。
        public static var limitExceed: InvalidParameterValue {
            InvalidParameterValue(.limitExceed)
        }
        
        /// 指定分组中没有人脸。
        public static var noFaceInGroups: InvalidParameterValue {
            InvalidParameterValue(.noFaceInGroups)
        }
        
        /// 图片中没有人脸。
        public static var noFaceInPhoto: InvalidParameterValue {
            InvalidParameterValue(.noFaceInPhoto)
        }
        
        /// 起始序号过大。请检查需要请求的数组长度。
        public static var offsetExceed: InvalidParameterValue {
            InvalidParameterValue(.offsetExceed)
        }
        
        /// 人员自定义描述字段数组长度超过限制。最多5个。
        public static var personExDescriptionInfosExceed: InvalidParameterValue {
            InvalidParameterValue(.personExDescriptionInfosExceed)
        }
        
        /// 人员自定义描述字段名称不可重复。
        public static var personExDescriptionsNameIdentical: InvalidParameterValue {
            InvalidParameterValue(.personExDescriptionsNameIdentical)
        }
        
        /// 人员自定义描述字段名称包含非法字符。人员自定义描述字段名称只支持中英文、-、_、数字。
        public static var personExDescriptionsNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.personExDescriptionsNameIllegal)
        }
        
        /// 人员自定义描述字段名称长度超出限制。
        public static var personExDescriptionsNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.personExDescriptionsNameTooLong)
        }
        
        /// 组中已包含对应的人员Id。
        public static var personExistInGroup: InvalidParameterValue {
            InvalidParameterValue(.personExistInGroup)
        }
        
        /// 人员人脸数量超出限制。单个人员最多可以包含五张人脸。
        public static var personFaceNumExceed: InvalidParameterValue {
            InvalidParameterValue(.personFaceNumExceed)
        }
        
        /// 人员性别设置出错。0代表未填写，1代表男性，2代表女性。
        public static var personGenderIllegal: InvalidParameterValue {
            InvalidParameterValue(.personGenderIllegal)
        }
        
        /// 人员ID已经存在。人员ID不可重复。
        public static var personIdAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.personIdAlreadyExist)
        }
        
        /// 人员ID包含非法字符。人员ID只支持英文、数字、-%@#&amp;_。
        public static var personIdIllegal: InvalidParameterValue {
            InvalidParameterValue(.personIdIllegal)
        }
        
        /// 人员ID不存在。
        public static var personIdNotExist: InvalidParameterValue {
            InvalidParameterValue(.personIdNotExist)
        }
        
        /// 人员ID超出长度限制。
        public static var personIdTooLong: InvalidParameterValue {
            InvalidParameterValue(.personIdTooLong)
        }
        
        /// 人员名称包含非法字符。人员名称只支持中英文、-、_、数字。
        public static var personNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.personNameIllegal)
        }
        
        /// 人员名称超出长度限制。
        public static var personNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.personNameTooLong)
        }
        
        /// QualityControl参数不合法。
        public static var qualityControlIllegal: InvalidParameterValue {
            InvalidParameterValue(.qualityControlIllegal)
        }
        
        /// 搜索的人员数目超过限制。
        public static var searchPersonsExceed: InvalidParameterValue {
            InvalidParameterValue(.searchPersonsExceed)
        }
        
        /// UniquePersonControl参数不合法。
        public static var uniquePersonControlIllegal: InvalidParameterValue {
            InvalidParameterValue(.uniquePersonControlIllegal)
        }
        
        /// 该操作不支持算法模型版本2.0及以下版本。
        public static var unsupportedGroupFaceModelVersion: InvalidParameterValue {
            InvalidParameterValue(.unsupportedGroupFaceModelVersion)
        }
        
        /// 一次最多上传四张人脸。
        public static var uploadFaceNumExceed: InvalidParameterValue {
            InvalidParameterValue(.uploadFaceNumExceed)
        }
        
        /// URL格式不合法。
        public static var urlIllegal: InvalidParameterValue {
            InvalidParameterValue(.urlIllegal)
        }
    }
}

extension TCIaiError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCIaiError.InvalidParameterValue, rhs: TCIaiError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIaiError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIaiError.InvalidParameterValue {
    public func toIaiError() -> TCIaiError {
        guard let code = TCIaiError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIaiError(code, context: self.context)
    }
}