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

extension TCTcrError {
    public struct InvalidParameter: TCTcrErrorType {
        enum Code: String {
            case errNSMisMatch = "InvalidParameter.ErrNSMisMatch"
            case errNamespaceExist = "InvalidParameter.ErrNamespaceExist"
            case errNamespaceReserved = "InvalidParameter.ErrNamespaceReserved"
            case errRepoExist = "InvalidParameter.ErrRepoExist"
            case errTooLarge = "InvalidParameter.ErrTooLarge"
            case errTriggerExist = "InvalidParameter.ErrTriggerExist"
            case errUserExist = "InvalidParameter.ErrUserExist"
            case errorNameExists = "InvalidParameter.ErrorNameExists"
            case errorNameIllegal = "InvalidParameter.ErrorNameIllegal"
            case errorNameReserved = "InvalidParameter.ErrorNameReserved"
            case errorRegistryName = "InvalidParameter.ErrorRegistryName"
            case errorTagOverLimit = "InvalidParameter.ErrorTagOverLimit"
            case errorTcrInvalidParameter = "InvalidParameter.ErrorTcrInvalidParameter"
            case replicationExists = "InvalidParameter.ReplicationExists"
            case unsupportedRegion = "InvalidParameter.UnsupportedRegion"
            case other = "InvalidParameter"
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

        /// ??????????????????????????????namespace????????????
        public static var errNSMisMatch: InvalidParameter {
            InvalidParameter(.errNSMisMatch)
        }

        /// ?????????????????????????????????
        public static var errNamespaceExist: InvalidParameter {
            InvalidParameter(.errNamespaceExist)
        }

        /// ???????????????????????????
        public static var errNamespaceReserved: InvalidParameter {
            InvalidParameter(.errNamespaceReserved)
        }

        /// ????????????????????????????????????
        public static var errRepoExist: InvalidParameter {
            InvalidParameter(.errRepoExist)
        }

        /// ???????????????
        ///
        /// ????????????????????????
        public static var errTooLarge: InvalidParameter {
            InvalidParameter(.errTooLarge)
        }

        /// ???????????????????????????
        public static var errTriggerExist: InvalidParameter {
            InvalidParameter(.errTriggerExist)
        }

        /// ?????????????????????
        public static var errUserExist: InvalidParameter {
            InvalidParameter(.errUserExist)
        }

        /// ????????????????????????
        public static var errorNameExists: InvalidParameter {
            InvalidParameter(.errorNameExists)
        }

        /// ?????????????????????
        public static var errorNameIllegal: InvalidParameter {
            InvalidParameter(.errorNameIllegal)
        }

        /// ????????????????????????
        public static var errorNameReserved: InvalidParameter {
            InvalidParameter(.errorNameReserved)
        }

        /// ??????????????????????????????????????????????????????
        public static var errorRegistryName: InvalidParameter {
            InvalidParameter(.errorRegistryName)
        }

        /// ???????????????10????????????
        public static var errorTagOverLimit: InvalidParameter {
            InvalidParameter(.errorTagOverLimit)
        }

        /// ?????????TCR?????????
        public static var errorTcrInvalidParameter: InvalidParameter {
            InvalidParameter(.errorTcrInvalidParameter)
        }

        public static var replicationExists: InvalidParameter {
            InvalidParameter(.replicationExists)
        }

        /// ?????????????????????????????????
        public static var unsupportedRegion: InvalidParameter {
            InvalidParameter(.unsupportedRegion)
        }

        /// ???????????????
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asTcrError() -> TCTcrError {
            let code: TCTcrError.Code
            switch self.error {
            case .errNSMisMatch: 
                code = .invalidParameter_ErrNSMisMatch
            case .errNamespaceExist: 
                code = .invalidParameter_ErrNamespaceExist
            case .errNamespaceReserved: 
                code = .invalidParameter_ErrNamespaceReserved
            case .errRepoExist: 
                code = .invalidParameter_ErrRepoExist
            case .errTooLarge: 
                code = .invalidParameter_ErrTooLarge
            case .errTriggerExist: 
                code = .invalidParameter_ErrTriggerExist
            case .errUserExist: 
                code = .invalidParameter_ErrUserExist
            case .errorNameExists: 
                code = .invalidParameter_ErrorNameExists
            case .errorNameIllegal: 
                code = .invalidParameter_ErrorNameIllegal
            case .errorNameReserved: 
                code = .invalidParameter_ErrorNameReserved
            case .errorRegistryName: 
                code = .invalidParameter_ErrorRegistryName
            case .errorTagOverLimit: 
                code = .invalidParameter_ErrorTagOverLimit
            case .errorTcrInvalidParameter: 
                code = .invalidParameter_ErrorTcrInvalidParameter
            case .replicationExists: 
                code = .invalidParameter_ReplicationExists
            case .unsupportedRegion: 
                code = .invalidParameter_UnsupportedRegion
            case .other: 
                code = .invalidParameter
            }
            return TCTcrError(code, context: self.context)
        }
    }
}
