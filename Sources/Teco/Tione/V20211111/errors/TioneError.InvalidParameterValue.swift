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

extension TCTioneError {
    public struct InvalidParameterValue: TCTioneErrorType {
        enum Code: String {
            case badName = "InvalidParameterValue.BadName"
            case clsConfigRequired = "InvalidParameterValue.ClsConfigRequired"
            case codeRepoNotFound = "InvalidParameterValue.CodeRepoNotFound"
            case datasetNumLimitExceeded = "InvalidParameterValue.DatasetNumLimitExceeded"
            case dcAnnotationType = "InvalidParameterValue.DCAnnotationType"
            case dcCosPathInfo = "InvalidParameterValue.DCCosPathInfo"
            case dcDatasetAnnotationNotMatch = "InvalidParameterValue.DCDatasetAnnotationNotMatch"
            case dcDatasetIdNotExist = "InvalidParameterValue.DCDatasetIdNotExist"
            case dcDatasetNameExist = "InvalidParameterValue.DCDatasetNameExist"
            case dcDatasetType = "InvalidParameterValue.DCDatasetType"
            case dcFilterValues = "InvalidParameterValue.DCFilterValues"
            case duplicateName = "InvalidParameterValue.DuplicateName"
            case frameworkVersionNotSupport = "InvalidParameterValue.FrameworkVersionNotSupport"
            case invalidFilter = "InvalidParameterValue.InvalidFilter"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case other = "InvalidParameterValue"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 名称不合法。
        public static var badName: InvalidParameterValue {
            InvalidParameterValue(.badName)
        }

        /// 请设置日志集、日志主题ID。
        public static var clsConfigRequired: InvalidParameterValue {
            InvalidParameterValue(.clsConfigRequired)
        }

        /// 存储库不存在。
        public static var codeRepoNotFound: InvalidParameterValue {
            InvalidParameterValue(.codeRepoNotFound)
        }

        /// 数据集数量超过限制。
        public static var datasetNumLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.datasetNumLimitExceeded)
        }

        /// 不支持的标注类型。
        public static var dcAnnotationType: InvalidParameterValue {
            InvalidParameterValue(.dcAnnotationType)
        }

        /// 存储桶参数错误。
        public static var dcCosPathInfo: InvalidParameterValue {
            InvalidParameterValue(.dcCosPathInfo)
        }

        /// 数据集标注状态不匹配。
        public static var dcDatasetAnnotationNotMatch: InvalidParameterValue {
            InvalidParameterValue(.dcDatasetAnnotationNotMatch)
        }

        /// 数据集Id不存在。
        public static var dcDatasetIdNotExist: InvalidParameterValue {
            InvalidParameterValue(.dcDatasetIdNotExist)
        }

        /// 数据集重名已存在。
        public static var dcDatasetNameExist: InvalidParameterValue {
            InvalidParameterValue(.dcDatasetNameExist)
        }

        /// 不支持的数据集类型。
        public static var dcDatasetType: InvalidParameterValue {
            InvalidParameterValue(.dcDatasetType)
        }

        /// 不支持的过滤参数。
        public static var dcFilterValues: InvalidParameterValue {
            InvalidParameterValue(.dcFilterValues)
        }

        /// 实例名称冲突，请更换名称后重试。
        public static var duplicateName: InvalidParameterValue {
            InvalidParameterValue(.duplicateName)
        }

        /// 训练框架对应的版本不支持，请阅读文档查看TIONE目前支持的框架和版本。
        ///
        /// 查看文档支持对应的框架和版本
        public static var frameworkVersionNotSupport: InvalidParameterValue {
            InvalidParameterValue(.frameworkVersionNotSupport)
        }

        /// 检查过滤器参数
        public static var invalidFilter: InvalidParameterValue {
            InvalidParameterValue(.invalidFilter)
        }

        /// 减少参数值数量
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTioneError() -> TCTioneError {
            let code: TCTioneError.Code
            switch self.error {
            case .badName: 
                code = .invalidParameterValue_BadName
            case .clsConfigRequired: 
                code = .invalidParameterValue_ClsConfigRequired
            case .codeRepoNotFound: 
                code = .invalidParameterValue_CodeRepoNotFound
            case .datasetNumLimitExceeded: 
                code = .invalidParameterValue_DatasetNumLimitExceeded
            case .dcAnnotationType: 
                code = .invalidParameterValue_DCAnnotationType
            case .dcCosPathInfo: 
                code = .invalidParameterValue_DCCosPathInfo
            case .dcDatasetAnnotationNotMatch: 
                code = .invalidParameterValue_DCDatasetAnnotationNotMatch
            case .dcDatasetIdNotExist: 
                code = .invalidParameterValue_DCDatasetIdNotExist
            case .dcDatasetNameExist: 
                code = .invalidParameterValue_DCDatasetNameExist
            case .dcDatasetType: 
                code = .invalidParameterValue_DCDatasetType
            case .dcFilterValues: 
                code = .invalidParameterValue_DCFilterValues
            case .duplicateName: 
                code = .invalidParameterValue_DuplicateName
            case .frameworkVersionNotSupport: 
                code = .invalidParameterValue_FrameworkVersionNotSupport
            case .invalidFilter: 
                code = .invalidParameterValue_InvalidFilter
            case .limitExceeded: 
                code = .invalidParameterValue_LimitExceeded
            case .other: 
                code = .invalidParameterValue
            }
            return TCTioneError(code, context: self.context)
        }
    }
}
